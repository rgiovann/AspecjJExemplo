package posgrad.utfpr.edu.br.exemploaspectj;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public aspect AccountAspect {
    private static final Logger logger = LoggerFactory.getLogger(AccountAspect.class);
    final int MIN_BALANCE = 10;

    pointcut callWithDraw(int amount, Account account):
             call(boolean posgrad.utfpr.edu.br.exemploaspectj.Account.withdraw(int)) && args(amount) && target(account);

    before(int amount, Account account) : callWithDraw(amount, account) {
        logger.info(" [AspectJ] Balance before withdrawal: {}", Integer.valueOf(account.balance));
        logger.info(" [AspectJ] Withdraw amount: {}", Integer.valueOf(amount));
    }

    boolean around(int amount, Account account) : callWithDraw(amount, account) {
        if (account.balance < amount) {
            logger.info(" [AspectJ] Withdrawal Rejected!");
            return false;
        }
        return proceed(amount, account);
    }

    after(int amount, Account account) : callWithDraw(amount, account) {
        logger.info(" [AspectJ] Balance after withdrawal : {}", Integer.valueOf(account.balance));
    }
}