using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LaptopVS.Model;

namespace LaptopVS.Laptop
{
    public class LaptopRepository
    {
        public static string AddNewLaptop(string name, string cpuname, string cpuperf, string gpuname,
            string gpuperf, string ram, string storage, string temp, string price, string noise, 
            string res, string afflink, int battery, string features, string imageurl)
        {
            laptopsEntities4 laptopdb = new laptopsEntities4();
            laptop laptop = LaptopFactory.makeLaptop(name, cpuname, cpuperf, gpuname,
             gpuperf, ram, storage, temp, price, noise, res, afflink, battery, features, imageurl);
            laptopdb.laptops.Add(laptop);
            laptopdb.SaveChanges();

            return "Success";
        }

        public static List<laptop> getLaptop()
        {
            laptopsEntities4 laptopdb = new laptopsEntities4();
            List<laptop> laptops = (from x in laptopdb.laptops select x).ToList<laptop>();
            List<laptop> laptopnames = (from x in laptops select x).ToList<laptop>();

            return laptopnames;
        }
    }
}