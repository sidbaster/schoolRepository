package jdbc.schoolAplication.exception;

public class DaoException extends RuntimeException{
    
    public DaoException(Throwable throwable) {
        super(throwable);
    }
}
