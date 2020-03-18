using BackEndAPIs.Models;
using Microsoft.Extensions.Logging;
using MongoDB.Driver;
using System.Collections.Generic;
using System.Linq;

namespace BackEndAPIs.Services
{
    public class ProductService
    {
        private readonly IMongoCollection<Product> _products;
        private readonly ILogger _logger;

        public ProductService(IProductstoreDatabaseSettings settings, ILogger<ProductService> logger)
        {
            _logger = logger;

            _logger.LogDebug("ConnectionString:  {settings.ConnectionString}", settings.ConnectionString);
            _logger.LogDebug("DatabaseName:  {settings.DatabaseName}", settings.DatabaseName);

            var client = new MongoClient(settings.ConnectionString);
            var database = client.GetDatabase(settings.DatabaseName);

            _products = database.GetCollection<Product>(settings.ProductsCollectionName);
        }

        public List<Product> Get()
        {
            return _products.Find(product => true).ToList();
        }


    }
}