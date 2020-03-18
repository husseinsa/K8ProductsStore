using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BackEndAPIs.Models;
using BackEndAPIs.Services;

namespace BackEndAPIs.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    
    public class ProductsController : ControllerBase
    {
        private readonly ProductService _productService;

        public  ProductsController(ProductService productService){
            _productService = productService;
        }

        [HttpGet]
        public ActionResult<List<Models.Product>> Get()
        {
            return _productService.Get();
        }
    }
}