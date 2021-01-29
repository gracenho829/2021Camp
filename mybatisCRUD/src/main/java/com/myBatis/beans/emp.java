package com.myBatis.beans;
import java.io.Serializable;
import java.util.Date;
public class emp implements Serializable{
	    private static final long serialVersionUID = 1L;
	 
	    private Integer id;
	    private String name;
	    private String blog;
	    private String address;
	    private int rating;
	   
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}

		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getBlog() {
			return blog;
		}
		public void setBlog(String blog) {
			this.blog = blog;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public int getRating() {
			return rating;
		}
		public void setRating(int rating) {
			this.rating = rating;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
	 
	    //Setters and Getters
	 
	   
	}