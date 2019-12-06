unit uMemo;

interface

uses
  uComponente;

type

  TMemos = class(TComponente) //precisei alterar o nome do tipo para n�o dar erro na hora de criar o objeto
  public
   Constructor Create(vX, vY, vAltura, vLargura: integer);
   Destructor  Destroy; Override;
   procedure Redimensionar(vAltura, vLargura : integer; pAltura, pLargura : real); override;// valor de refer�ncia de aumento do form


  end;

implementation

{ TMemo }
constructor TMemos.Create(vX, vY, vAltura, vLargura: integer);
begin
    self.X := vX;
    self.Y := vY;
    self.Altura := vAltura;
    self.Largura := vLargura;
end;

destructor TMemos.Destroy;
begin
  inherited;
end;

procedure TMemos.Redimensionar(vAltura, vLargura: integer; pAltura,     //valor de aumento do frame e propors�o de aumento em %
  pLargura: real);
begin
  self.Largura := trunc(self.Largura * ((pLargura/100)+1));
  self.Altura := trunc(self.Altura * ((paltura/100) + 1 ));
  self.X := trunc(self.X + valtura/2);
  self.Y := trunc(self.Y + vlargura/2);
end;

end.

