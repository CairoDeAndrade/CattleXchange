package com.cattle.xchange.controllers;

import com.cattle.xchange.domain.user.UserService;
import com.cattle.xchange.domain.user.dtos.UserInsertDTO;
import com.cattle.xchange.domain.user.dtos.UserLoginDTO;
import com.cattle.xchange.domain.user.dtos.UserMinDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService service;

    @PostMapping
    public ResponseEntity<UserMinDTO> insert(@RequestBody UserInsertDTO dto) {
        return ResponseEntity.ok(
                new UserMinDTO(service.insert(
                        dto.document(),
                        dto.name(),
                        dto.lastName(),
                        dto.email(),
                        dto.password()
                ))
        );
    }

    @GetMapping("/")
    public ResponseEntity<List<UserMinDTO>> findAll() {
        return ResponseEntity.ok(
                service.findAll().stream().map(UserMinDTO::new).toList()
        );
    }

    @GetMapping("/{id}")
    public ResponseEntity<UserMinDTO> findUserById(@PathVariable UUID id) {
        return ResponseEntity.ok(
                new UserMinDTO(service.findUserById(id))
        );
    }

    @GetMapping("/cpf/{cpf}")
    public ResponseEntity<UserMinDTO> findByCpf(@PathVariable String cpf) {
        return ResponseEntity.ok(
                new UserMinDTO(service.findByCpf(cpf))
        );
    }

    @PostMapping("/login")
    public ResponseEntity<UserMinDTO> login(@RequestBody UserLoginDTO dto) {
        return ResponseEntity.ok(
                new UserMinDTO(service.login(dto))
        );
    }
}
