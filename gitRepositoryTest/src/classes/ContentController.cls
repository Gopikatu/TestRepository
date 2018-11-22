public class ContentController {
public blob file { get; set; }
public attachment a;
  public ContentController (){
 a=new attachment();
  
  
    }
    public Pagereference upload(){
    a.ParentId='0017F00000t5HcgQAE';
  a.Body=file;
  a.Name='testattach';
  insert a;
  return new Pagereference ('/'+a.id);
    }
    }