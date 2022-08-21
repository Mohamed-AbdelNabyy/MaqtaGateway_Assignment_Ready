import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Employee } from 'src/app/models/employee';
import { EmployeeService } from 'src/app/services/employee.service';
import { TokenStorageService } from 'src/app/_services/token-storage.service';
@Component({
  selector: 'app-employee-list',
  templateUrl: './employee-list.component.html',
  styleUrls: ['./employee-list.component.css']
})
export class EmployeeListComponent implements OnInit {

  employees?: Employee[];
  currentemployees: Employee = {};
  currentIndex = -1;
  title = '';
  constructor(private employeeService: EmployeeService) { }
  ngOnInit(): void {
    this.retrieveemployees();
  }
  retrieveemployees(): void {
    this.employeeService.getAll()
      .subscribe({
        next: (data) => {
          this.employees = data;
          console.log(data);
        },
        error: (e) => console.error(e)
      });
  }
  refreshList(): void {
    this.retrieveemployees();
    this.currentemployees = {};
    this.currentIndex = -1;
  }
  setActiveEmployee(employee: Employee, index: number): void {
    this.currentemployees = employee;
    this.currentIndex = index;
  }
  remove(id :any): void {
    this.employeeService.delete(id)
      .subscribe({
        next: (res) => {
          console.log(res);
          this.refreshList();
        },
        error: (e) => console.error(e)
      });
  }
 
}
