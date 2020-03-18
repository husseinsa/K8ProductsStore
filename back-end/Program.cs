﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;

namespace BackEndAPIs
{
    public class Program
    {
        public static void Main(string[] args)
        {
            CreateWebHostBuilder(args).Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
            
            WebHost.CreateDefaultBuilder(args)
                   .ConfigureLogging((hostingContext, logging) =>
                   {
                       logging.AddConfiguration(hostingContext.Configuration.GetSection("Logging"));
                       logging.AddConsole();
                       logging.AddDebug();
                       logging.AddEventSourceLogger();
                   })
                .UseStartup<Startup>();
    }
}
