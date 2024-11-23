using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public enum eStockStatus
    {
        IN_STOCK = 1,
        OUT_OF_STOCK,
        LOW_STOCK
    }

    public enum eDBAction
    {
        Insert = 1,
        Update = 2,
        Delete
    }

    public enum eErrorType
    {
        None = 0,          // Ninguno
        NotFound = 1,      //  No se encontró registro o cualquier dato
        Format,            // Error de conversión
        Sql,               // Error de SQL
        Validation,        // Errores controlados
        Connection,        // Error de conexión
        TimeOut,           // Error de timeout por bloqueos o interbloqueos
        Unknown = 30       // Error desconocido
    }

    // Representaciones
    // <summary>
    // Representa los diferentes esquemas que se manejan en este microservicio
    // </summary>

    public class Schema
    {
        /// <summary>
        /// Esquema Products
        /// </summary>
        public static readonly string Products = "Products";

        /// <summary>
        /// Esquema Product_Configurations
        /// </summary>
        public static readonly string Product_Configurations = "Product_Configurations";

        /// <summary>
        /// Esquema Carts
        /// </summary>
        public static readonly string Carts = "Carts";

        /// <summary>
        /// Esquema Cart_Items
        /// </summary>
        public static readonly string Cart_Items = "Cart_Items";

        /// <summary>
        /// Esquema Orders
        /// </summary>
        public static readonly string Order = "Orders";

        /// <summary>
        /// Esquema Order_Items
        /// </summary>
        public static readonly string Order_Items = "Order_Items";
    }

    public class Procedures
    {
        /// <summary>
        /// Procedimiento para insertar
        /// </summary>
        public static readonly string Insert = "Insert";

        /// <summary>
        /// Procedimiento para actualizar
        /// </summary>
        public static readonly string Update = "Update";

        /// <summary>
        /// Procedimiento para eliminar
        /// </summary>
        public static readonly string Delete = "Delete";

        /// <summary>
        /// Procedimiento para obtener un registro por identificador
        /// </summary>
        public static readonly string GetById = "GetById";

        /// <summary>
        /// Procedimiento para obtener todos los registros
        /// </summary>
        public static readonly string GetAll = "GetAll";
    }
}
