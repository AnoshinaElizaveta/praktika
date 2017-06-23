unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mssqlconn, sqldb, mysql55conn, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, DBGrids, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MSSQLConnection1AfterConnect(Sender: TObject);
    procedure MySQL55Connection1AfterConnect(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation
uses unit2;
{$R *.lfm}

{ TForm1 }

procedure TForm1.MySQL55Connection1AfterConnect(Sender: TObject);
begin

end;


procedure TForm1.Button4Click(Sender: TObject);
  // D i s c o n n e c t e d
begin
  SQLQuery1.Active:=false;
  SQLTransaction1.Commit;
  MySQL55Connection1.Connected:=false;
end;

procedure TForm1.Button5Click(Sender: TObject);

  begin
  Unit2.Form2.show;
  end;


procedure TForm1.Button10Click(Sender: TObject);
var i:String;
begin
i:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
SQLQuery1.Close;
SQLQuery1.SQL.Clear;

SQLQuery1.SQL.Add('Delete from `artists`.`spravochnik` where id = "'+i+'"');
SQLQuery1.ExecSQL;
SQLTransaction1.Commit;
SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('Select * from spravochnik');
SQLQuery1.Open;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin

end;


procedure TForm1.Button7Click(Sender: TObject);
var b:string;
begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  b:= format('select * from artists.spravochnik where Author = ("%s")',[Edit1.Text]);
  SQLQuery1.SQL.Add(b);
  SQLQuery1.Active:=True;
end;

procedure TForm1.Button8Click(Sender: TObject);
 var b:string;
begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  b:= format('select * from artists.spravochnik where Bdate = ("%s")',[Edit2.Text]);
  SQLQuery1.SQL.Add(b);
  SQLQuery1.Active:=True;
end;

procedure TForm1.Button9Click(Sender: TObject);
 var b:string;
 begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  b:= format('select * from artists.spravochnik where Ddate = ("%s")',[Edit3.Text]);
  SQLQuery1.SQL.Add(b);
  SQLQuery1.Active:=True;
end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Edit4Change(Sender: TObject);
begin

end;

procedure TForm1.Edit5Change(Sender: TObject);
begin

end;

procedure TForm1.Edit6Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.MSSQLConnection1AfterConnect(Sender: TObject);
begin

end;

procedure TForm1.Button6Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
   MySQL55Connection1.Connected:=true;
 except
   ShowMessage('Подключение к БД: ОШИБКА!');
   exit;
 end;
end;




procedure TForm1.Button2Click(Sender: TObject);
begin
   try
   SQLTransaction1.Active:=true;
 except
   ShowMessage('Транзакция: ОШИБКА!');
   exit;
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
  var
    str_sql : string;
begin
  try
   SQLQuery1.Active := false;
   SQLQuery1.SQL.Clear;
   str_sql := 'SET character_set_client='+#39+'utf8'+#39+',character_set_connection='+#39+'cp1251'+#39+',character_set_results='+#39+'utf8'+#39+';';
   SQLQuery1.sql.add(str_sql);
   SQLQuery1.ExecSQL;
   SQLQuery1.SQL.Clear;
   SQLQuery1.sql.add('SELECT * FROM spravochnik;');
   SQLQuery1.Open;
  except
   ShowMessage('SQL-запрос: ОШИБКА!');
   exit;
 end;
end;

end.

