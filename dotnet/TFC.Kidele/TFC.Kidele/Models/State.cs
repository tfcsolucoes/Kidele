using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace TFC.Kidele.Models
{
    public class State
    {
        //Codigo conforme ibge
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Code { get; set; }
        [StringLength(2, MinimumLength = 2)]
        public string UF { get; set; }
        [StringLength(100)]
        public string Name { get; set; }
    }
}
