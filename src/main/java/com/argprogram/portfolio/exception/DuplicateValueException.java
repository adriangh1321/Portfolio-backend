
package com.argprogram.portfolio.exception;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DuplicateValueException extends RuntimeException{
    
    private String field;
    public DuplicateValueException(String msg,String field){
        super(msg);
        this.field=field;
    }
}
