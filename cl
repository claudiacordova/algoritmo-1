#include "conio.h"
#include <iostream>

using namespace std;

void cargar(int cod[],int sb[],int n);
void mostrar(int cod[],int sb[],int sn[],int n);
void salarioneto(int sb[],int n,int sn[]);
void ordenarcodigos(int cod[],int sb[],int sn[],int n);
void main()
{int  cod[50],sb[50],sn[50],n;
cout<<"ingresar el numero de empleados";
cin>>n;
cargar(cod,sb,n);
salarioneto(sb,n,sn);
mostrar(cod,sb,sn,n);
getch();

}

void cargar(int cod[],int sb[],int n)
{for(int i=0;i<n;i++)
	{
	cout<<endl<<"ingresar codigo:";
	cin>>cod[i];
	cout<<endl<<"ingresar salario bruto:";
	cin>>sb[i];
	}
}
void mostrar(int cod[],int sb[],int sn[],int n)
{
for(int i=0;i<n;i++)
	{cout<<cod[i]<<"\t"<<sb[i]<<"\t"<<sn[i]<<"\n";
	}
}

void salarioneto(int sb[],int n,int sn[])
{int  i=1;
float sf;
while(i<=n)
	{
	if(sb[i-1]<1480*2)
	sn[i-1]=sb[i-1]-(sb[i-1]*0.12);
	else
	sn[i-1]=sb[i-1]-(sb[i-1]*0.12)-(sb[i-1]*0.13);
	}
}

void ordenarcodigos(int cod[],int sb[],int sn[],int n)
{int aux;
for(int i=0;i<n-1;i++)
	{for(int k=i+1;k<n;k++)
		{if(cod[i]>cod[k])
			{aux=cod[i];
			cod[i]=cod[k];
			cod[k]=aux;

			aux=sb[i];
			sb[i]=sb[k];
			sb[k]=aux;

			aux=sn[i];
			sn[i]=sn[k];
			sn[k]=aux;

			}
		}
	}

}
