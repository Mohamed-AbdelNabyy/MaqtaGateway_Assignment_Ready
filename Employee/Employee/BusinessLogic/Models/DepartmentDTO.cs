using System.ComponentModel.DataAnnotations;

namespace Employee.BusinessLogic.Models
{
    public class DepartmentDTO
    {
        public int Id { get; set; }
        [MaxLength(120)]
        [Required]
        public string Name { get; set; }
    }
}
