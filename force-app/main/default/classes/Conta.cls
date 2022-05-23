Public class Conta{
	String banco;
	String agencia;
	Integer numero;
	String titular;
	Decimal saldo;

	Public Boolean saque(Decimal valor, Conta contaDebito){
            Boolean sucesso = false;
        if(contaDebito.saldo >= valor){
           contaDebito.saldo = contaDebito.saldo - valor;
            sucesso =  true;
        }
            return sucesso;
    }

	Public Decimal saldo(Conta conta){
		return conta.saldo;
    }

	Public Boolean tranferencia(Conta contaOrigem, Conta contaDestino, Decimal valor){
		Boolean sucesso = false;
        
		return sucesso;
    }

	public void transferenciaAgendada (Conta contaOrigem, Conta contaDestino, Decimal valor){
    }

}