package com.argprogram.portfolio.exception;

import com.argprogram.portfolio.enumeration.ApplicationErrorCode;
import com.argprogram.portfolio.enumeration.Location;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalControllerExceptionHandler extends AbstractExceptionHandler {

    @ExceptionHandler(value = {BadLoginException.class})
    protected ResponseEntity<ErrorDetails> handleBadLoginException(RuntimeException exc) {
        ErrorDetails error = ErrorDetails.builder()
                .code(ApplicationErrorCode.BAD_CREDENTIALS)
                .description(exc.getMessage())
                .location(Location.BODY)
                .build();

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(error);
    }
    
    
    @ExceptionHandler(value = {DuplicateValueException.class})
    protected ResponseEntity<ErrorDetails> handleDuplicateValueException(RuntimeException exc) {
        ErrorDetails error = ErrorDetails.builder()
                .code(ApplicationErrorCode.INVALID_FIELD_VALUE)
                .description(exc.getMessage())
                .field("email")
                .location(Location.BODY)
                .build();

        return ResponseEntity.status(HttpStatus.CONFLICT).body(error);
    }
}
