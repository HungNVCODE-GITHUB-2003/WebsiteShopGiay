package PS20689_ASM.bean;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import lombok.Data;
@Data
@Entity
@Table(name = "accounts")
public class Account implements Serializable{
	
	@Id
	@NotBlank(message="Không được để trống username !")
	String username;
	
	@NotBlank(message="Không được để trống password !")
	String password;
	
	@NotBlank(message="Không được để trống fullname !")
	String fullname;
	
	@NotBlank(message="Vui lòng nhập email !")
	@Email(message="Chua dung dinh dang email !")
	String email;
	
	
	String photo;
	
	@Column(nullable = false, columnDefinition = "bit default 0")
	boolean activated;
	
	boolean admin;
	@OneToMany(mappedBy = "account")
	List<Order> orders;
}
