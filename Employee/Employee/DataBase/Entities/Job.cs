using DAL.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employee.DataBase.Entities
{
    public class JobEntity : BaseEntity
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(120)]
        [Required]
        public string Name { get; set; }
        public string? Description { get; set; }
        public ICollection<EmployeeEntity> Employees { get; set; }
    }
}
