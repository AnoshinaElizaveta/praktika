unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, mysql55conn, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  begin
       SQLQuery1.Active := false;
      SQLQuery1.Close;
      SQLQuery1.SQL.Clear;
      SQLQuery1.sql.add('INSERT INTO spravochnik (Author, Bdate, Ddate, StartOfCreation, Pictures) VALUES  ("'+Edit2.Text+'",'+' "'+Edit3.Text+#39+'", "'+Edit4.Text+'", "'+Edit5.Text+#39+'", "'+Edit6.Text+'");');
      //SQLQuery1.sql.add('INSERT INTO hudozniki (author,bdate, ddate, dcreate, pictures) VALUES  ('+#39+Edit2.Text+#39+', '+Edit3.Text+', '+Edit4.Text+', '+#39+Edit5.Text+#39+', '+#39+Edit6.Text+#39+';');
      SQLQuery1.ExecSQL;
      SQLTransaction1.Commit;
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Edit2.Text:= '';
  Edit3.Text:= '';
  Edit4.Text:= '';
  Edit5.Text:= '';
  Edit6.Text:= '';
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin

end;


procedure TForm2.FormCreate(Sender: TObject);
begin

end;

end.

