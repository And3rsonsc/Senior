unit uFrame;

interface

uses
  uComponente;

type

  TFrame = class(TComponente)
    public
    procedure Redimensionar(vAltura, vLargura : integer; pAltura, pLargura : real); override;// valor de refer�ncia de aumento do form
    procedure novoTamanho(vAltura, vLargura : integer; pAltura, pLargura : integer); // Valores reais
    Constructor Create(vX, vY, vAltura, vLargura : integer);
    Destructor  Destroy; Override;

  end;

implementation

{ TFrame }


constructor TFrame.Create(vX, vY, vAltura, vLargura : integer);
begin
    self.X := vX;
    self.y := vY;
    self.Altura := vAltura;
    self.Largura := vLargura;
end;

destructor TFrame.Destroy;
begin
  inherited;
end;

procedure TFrame.novoTamanho(vAltura, vLargura: integer; pAltura,  //fun��o de altera��o do tamanho do frame externo
  pLargura: integer);
  var
  vAlt, vLar : integer; //parametros para as fun��es de ajuste de tamanho e posi��o
  pAlt, pLar : real;
  I: Integer;
begin
   vAlt := vAltura - self.Altura;
   vLar := vLArgura - self.Largura;
   pAlt := ((vAltura * 100)/ self.Altura) - 100;
   pLar := ((vLargura * 100)/ self.Largura) - 100;
   self.Altura := vAltura;
   self.Largura := vLargura;

   for I := 0 to (length(self.Componentes)-1) do           //N�o est� claro, mas se Frames internos podem ter outros objetos a solu��o tem que ser alterada para uma procedure e ela ser chamada recursivamente.
      self.Componentes[i].Redimensionar(vlar, valt, palt, plar);
   end;

procedure TFrame.Redimensionar(vAltura, vLargura: integer; pAltura,    //valor de aumento do frame interno e propors�o de aumento em %
  pLargura: real);
begin
  self.Largura := trunc(self.Largura * ((pLargura/100) + 1));
  self.Altura := trunc(self.Altura * ((paltura/100) + 1 ));
  self.X := trunc(self.X + valtura/2);
  self.Y := trunc(self.Y + vlargura/2);
end;


end.

