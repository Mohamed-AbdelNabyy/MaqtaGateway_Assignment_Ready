import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Employee } from '../models/employee';
const baseUrl = 'https://localhost:7177/api/Employee/';
const auth_token='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiTW9oYW1lZEFkbWluMSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcHJpbWFyeXNpZCI6ImNlYzVlMTVmLThjODAtNDRmZi05MDcyLWZjODE1ZTAxN2MzYSIsImp0aSI6IjRhMmI4OGQzLTQ2YzMtNDVhYi1hYmEwLTgzZTE0NWI4YWYyMiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkFkbWluIiwiZXhwIjoxNjYxMDM1ODc5fQ.4-zufyB5ZIsVoP76xc6RLcqlJGaWo6r4xKnwgcjWC-0'
const headers = new HttpHeaders({
  'Content-Type': 'application/json',
  'Authorization': `Bearer ${auth_token}`,
  'Access-Control-Allow-Origin': '*'
})
@Injectable({
  providedIn: 'root'
})
export class EmployeeService {
  constructor(private http: HttpClient) { }
  getAll(): Observable<Employee[]> {

    return this.http.get<Employee[]>(baseUrl+'GetAll');
  }
  get(id: any): Observable<Employee> {
    return this.http.get(`${baseUrl}+'GetById?id='/${id}`);
  }
  create(data: any): Observable<any> {
    return this.http.post(baseUrl+'Create', data);
  }
  update(id: any, data: any): Observable<any> {
    return this.http.put(`${baseUrl}+'Update'/${id}`, data);
  }
  delete(id: any): Observable<any> {
    return this.http.delete(`${baseUrl}+'DeleteById?id='/${id}`);
  }
  
}