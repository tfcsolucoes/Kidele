using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace TFC.Kidele.Models
{
    public class City
    {
        public int Id { get; set; }
        public int CodeIbge { get; set; }
        public string Name { get; set; }
        public float Latitude { get; set; }
        public float Longitude { get; set; }
        public bool IsCapital { get; set; }
        [ForeignKey("StateId")]
        public virtual State State { get; set; }
    }
}
