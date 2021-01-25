package com.book;

public class Book {
	private int id;  
	private String name,author,status, image, inLibrary;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}  
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getInLibrary() {
		return inLibrary;
	}
	public void setInLibrary(String inLibrary) {
		this.inLibrary = inLibrary;
	}
	
}
