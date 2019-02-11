using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TFC.Kidele.Models
{
    public class Person
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Nickname { get; set; }
        public int? Cpf { get; set; }
        public int? Cnpj { get; set; }
        public int PersonTypeId { get; set; }
        public int? PersonGenderId { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime? UpdateDate { get; set; }
    }
}
