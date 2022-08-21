using System.ComponentModel.DataAnnotations;

namespace Employee.BusinessLogic.Models
{
    public class JobDTO
    {
        public int Id { get; set; }
        [MaxLength(120)]
        [Required]
        public string Name { get; set; }
    }
}
