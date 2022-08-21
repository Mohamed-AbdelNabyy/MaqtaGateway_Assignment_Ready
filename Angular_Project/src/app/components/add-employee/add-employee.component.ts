import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Employee } from 'src/app/models/employee';
import { EmployeeService } from 'src/app/services/employee.service';
import { TokenStorageService } from 'src/app/_services/token-storage.service';
@Component({
  selector: 'app-add-employee',
  templateUrl: './add-employee.component.html',
  styleUrls: ['./add-employee.component.css']
})
export class AddEmployeeComponent implements OnInit {
  isLoggedIn = false;
  employee: Employee = {
    employeeCode: '',
    firstName: '',
    lastName: '',
    phoneNo: '',
    hireDate: '',
    sex: '',
    birthDate: '',
    salary: 0,
    jobId: '1',
    departmentId: '4'
    
   
  };
  submitted = false;
  constructor(private employeeService: EmployeeService,private tokenStorageService: TokenStorageService,private router:Router) { }
  ngOnInit(): void {
    this.isLoggedIn = !!this.tokenStorageService.getToken();
    if (!this.isLoggedIn)
    {
      this.router.navigate(['/login']);
    }
  }
  saveEmployee(): void {
    const data = {
      employeeCode: this.employee.employeeCode,
      firstName: this.employee.firstName,
      lastName: this.employee.lastName,
      phoneNo: this.employee.phoneNo,
      hireDate: this.employee.hireDate,
      sex: this.employee.sex,
      birthDate: this.employee.birthDate,
      salary: this.employee.salary,
      jobId: this.employee.jobId,
      departmentId: this.employee.departmentId
      
    };
    this.employeeService.create(data)
      .subscribe({
        next: (res) => {
          console.log(res);
          this.submitted = true;
        },
        error: (e) => console.error(e)
      });
  }
  newEmployee(): void {
    this.submitted = false;
    this.employee = {
      employeeCode: '',
    firstName: '',
    lastName: '',
    phoneNo: '',
    hireDate: '',
    sex: '',
    birthDate: '',
    salary: 0,
    jobId: '',
    departmentId: ''
  
    };
  }
}