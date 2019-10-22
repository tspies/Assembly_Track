#include <stdio.h>
#include <unistd.h>

int main(int argc, char** argv)
{
	FILE *fp;
	char ch;

    fp=fopen("token","r");

    if(fp==NULL)
    {
        printf("Some problem in opening the file");
        exit(0);
    } 
    else
    { 
	int i = 0;
        while((ch=fgetc(fp))!=EOF)
        {
            printf("%c",(ch - i++));
        }
	printf("\n");
    }

    fclose(fp);

    return 0;
}
