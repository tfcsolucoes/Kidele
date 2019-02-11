using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TFC.Kidele.Models
{
    public class SubCategory
    {
        public int Id { get; set; }
        public virtual Category Category { get; set; }
        public string Name { get; set; }
        public bool IsActive { get; set; }
    }
}
