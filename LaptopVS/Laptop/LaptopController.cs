using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LaptopVS.Model;

namespace LaptopVS.Laptop
{
    public class LaptopController
    {
        public static string addlaptop(string name, string cpuname, string cpuperf, string gpuname,
            string gpuperf, string ram, string storage, string temp, string price, string noise,
            string res, string afflink)
        {
            if(name.Equals(" ") || cpuname.Equals(" ") || cpuperf.Equals(" ") || gpuname.Equals(" ") || 
                gpuperf.Equals(" ") || ram.Equals(" ") || storage.Equals(" ") || temp.Equals(" ") || 
                price.Equals(" ") || noise.Equals(" ") || res.Equals(" ") || afflink.Equals(" "))
            {
                return "Please fill all the fields";
            }
            else
            {
                return LaptopRepository.AddNewLaptop( name,  cpuname,  cpuperf,  gpuname,
                    gpuperf,  ram,  storage,  temp,  price,  noise, res,  afflink);
            }
        }
    }
}