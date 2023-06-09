﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LaptopVS.Model;

namespace LaptopVS.Laptop
{
    public class LaptopFactory
    {
        public static laptop makeLaptop(string name, string cpuname, string cpuperf, string gpuname,
            string gpuperf, string ram, string storage, string temp, string price, string noise, string res, string afflink,
            int battery, string features, string imageurl)
        {
            laptop laptop = new laptop();
            laptop.laptopname = name;
            laptop.cpu = cpuname;
            laptop.cpuperf = int.Parse(cpuperf);
            laptop.gpu = gpuname;
            laptop.gpuperf = int.Parse(gpuperf);
            laptop.ram = int.Parse(ram);
            laptop.storage = int.Parse(storage);
            laptop.temperature = int.Parse(temp);
            laptop.price = int.Parse(price);
            laptop.sound = int.Parse(noise);
            laptop.screen = res;
            laptop.afflink = afflink;
            laptop.battery = battery;
            laptop.features = features;
            laptop.imageLink = imageurl;

            return laptop;
        }
    }
}