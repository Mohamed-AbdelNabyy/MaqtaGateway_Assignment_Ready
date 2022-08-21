using DAL.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employee.DataBase.Entities
{
    public class EmployeeEntity : BaseEntity
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(10)]
        [Required]
        public string EmployeeCode { get; set; }
        [MaxLength(30)]
        [Required]
        public string FirstName { get; set; }
        [MaxLength(30)]
        [Required]
        public string LastName { get; set; }
       
        [MaxLength(15)]
        public string PhoneNo { get; set; }
        [Required]
        public string HireDate { get; set; }
       
        [Required]
        public string Sex { get; set; }
        [Required]
        public DateTime BirthDate { get; set; }
        [Required]
        public decimal Salary { get; set; }

        [ForeignKey(nameof(Job))]
        [Required]
        public int JobId { get; set; }
        public JobEntity Job { get; set; }

        [ForeignKey(nameof(Department))]
        [Required]
        public int DepartmentId { get; set; }
        public DepartmentEntity Department { get; set; }
    }
}
