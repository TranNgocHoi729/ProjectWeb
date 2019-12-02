/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.Car;

/**
 *
 * @author dell
 */
public class PagingForSort {

    int size = 8;
    int page ;
    int numPage;
    String status;
    ArrayList<Car> a = new ArrayList<>();

    
    public int getNumPage() throws Exception {
        int sizes = new CarDao().getSelectAllDesc().size();
        return sizes%size==0?sizes/size : 1+sizes/size;
    }

    public void setNumPage(int numPage) {
        this.numPage = numPage;
    }

    public PagingForSort() throws Exception {
        page=1;
    }

    public int getStart() {
        return page;
    }

    public void setStart(int start) {
        this.page = start;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    
    private ArrayList<Car> getListDESC() throws Exception {
        int scale=new CarDao().getSelectAllDesc().size();
        int limit = size;
         int start = (page-1)*size;
        if(start+size > scale){
            limit = scale-(page-1)*size;
        }
        a = new CarDao().getSelectAllDesc();   
        ArrayList<Car> list = new ArrayList<>();
        for (int i = 0; i < limit; i++) {
            list.add(a.get(start));
            start++;
        }
        return list;
    }

    private ArrayList<Car> getListASC() throws Exception {
        int scale=new CarDao().getSelectAllDesc().size();
        int limit = size;
         int start = (page-1)*size;
        if(start+size > scale){
            limit = scale-(page-1)*size;
        }
        a = new CarDao().getSelectAllAsc();
        
        ArrayList<Car> list = new ArrayList<>();
        for (int i = 0; i < limit; i++) {
            list.add(a.get(start));
            start++;
        }
        return list;
    }
    
    public ArrayList<Car> getDisplaySort() throws Exception{
        if(status.equalsIgnoreCase("DESC")){
            return getListDESC();
        }else{
            return getListASC();
        }
    }
}
