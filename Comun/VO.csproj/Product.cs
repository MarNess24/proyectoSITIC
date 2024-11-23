using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;

namespace VO
{
    [DataContract]
    public class Product
    {
        [DataMember(EmitDefaultValue = false)]
        public int Id { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public string Name { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public string Description { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public double Price { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public int Current_Stock { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public int Max_Stock { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public int Min_Stock { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public eStockStatus StockStatusId { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public string Imagepath { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public DateTime CreatedAt { get; set; }

        [DataMember(EmitDefaultValue = false)]
        public DateTime UpdatedAt { get; set; }
    }
}
