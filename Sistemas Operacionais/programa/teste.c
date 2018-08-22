/* Programa principal */

#include

/* Funcao executada pelos dois processos filhos */

codigo_do_filho(){
	printf("Alo do filho \n");
	exit();
}

main() {
	int f1; /* Identifica Processo filho 1*/
	int f2; /* Identifica Processo filho 2*/

	printf("Alo do pai \n");

	f1 = create_process(codigo_do_filho); /* cria filho 1 */
	f2 = create_process(codigo_do_filho); /* cria filho 2 */

	wait_process(f1);
	printf("Filho 1 morreu \n");

	wait_process(f2);
	printf("Filho 2 morreu \n");

	exit();
}
