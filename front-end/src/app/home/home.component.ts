import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { DataserviceService } from '../dataservice.service';
import { Product } from '../product';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  title = 'Deploying a multi-container application to Azure Kubernetes';
  public async: any;
  Products: Observable<Product[]>;

  constructor(private dataService: DataserviceService) {
  }

  ngOnInit() {
  }

  getProducts() {
    this.Products = this.dataService.getProducts();
  }


}
