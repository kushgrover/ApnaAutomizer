

int main()
{
  unsigned int i = 0;
  unsigned int j = 0;
  unsigned int k = 0;

for (i=1; i<=3; i++){
for (j=1; j<=3; j++){
	k = i + j + k;
}
  }
    //@ assert(k == 36) ;

}
