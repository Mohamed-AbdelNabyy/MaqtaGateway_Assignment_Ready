import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor } from '@angular/common/http';
import { Observable } from 'rxjs';
import { TokenStorageService } from '../_services/token-storage.service';

@Injectable()
export class BasicAuthInterceptor implements HttpInterceptor {
    constructor(private storageservice:TokenStorageService){}

    intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {

        //Get Token data from local storage
        let token = this.storageservice.getToken();
      console.log(token);
        if (token) {
             
            request = request.clone({
                setHeaders: {
                    'Content-Type': 'application/json',
                   
                    'Authorization': 'Bearer ' + token,
                }
            });
        }
        request = request.clone({ headers: request.headers.set('Accept', 'application/json') });

      
return next.handle(request); }}
