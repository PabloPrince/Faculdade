void remove_esp(char str[]) {
int i, j = 0, tam = strlen(str);
for(i=0; i<tam; i++) {
        if(str[i] != ' ') {
                str[j] = str[i];
                j++;
    }
}
   str[j] = '\0';

}
