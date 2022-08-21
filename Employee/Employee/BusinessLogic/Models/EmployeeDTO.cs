using System.ComponentModel.DataAnnotations;

namespace Employee.BusinessLogic.Models
{
    public class CreateEmployeeDTO
    {
        [Required]
        [StringLength(maximumLength: 10, ErrorMessage = "Employee Code is to Long ")]
        public string EmployeeCode { get; set; }
        [Required]
        [StringLength(maximumLength: 30, ErrorMessage = "FirstName is to Long ")]
        public string FirstName { get; set; }
        [Required]
        [StringLength(maximumLength: 30, ErrorMessage = "LastName is to Long ")]
        public string LastName { get; set; }
        [Required]
        [StringLength(maximumLength: 15, ErrorMessage = "PhoneNo is to Long ")]
        public string PhoneNo { get; set; }
        [Required]
        public string HireDate { get; set; }
        [Required]
        public string Sex { get; set; }
        [Required]
        public DateTime BirthDate { get; set; }
        [Required]
        public decimal Salary { get; set; }
        [Required]
        public int JobId { get; set; }
        [Required]
        public int DepartmentId { get; set; }
    }
    public class EmployeeDTO: CreateEmployeeDTO
    {
        public int Id { get; set; }
    }
}
