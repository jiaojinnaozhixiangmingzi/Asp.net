using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class bl
    {
        public string getname() {
            DAL.dal dal = new DAL.dal();
            return dal.Getname();
        }
    }
}
