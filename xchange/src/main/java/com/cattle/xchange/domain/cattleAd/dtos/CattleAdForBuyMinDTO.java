package com.cattle.xchange.domain.cattleAd.dtos;

import com.cattle.xchange.domain.cattleAd.CattleAd;
import jakarta.validation.constraints.NotBlank;

import java.util.UUID;

public record CattleAdForBuyMinDTO
        (@NotBlank
         String title,
         @NotBlank
         double unitValue,
         @NotBlank
         int quantity,
         @NotBlank
         UUID ownerCod
        ) {
    public CattleAdForBuyMinDTO(CattleAd user) {
        this(
                user.getTitle(),
                user.getUnitValue(),
                user.getQuantity(),
                user.getUserCod()
        );
    }
}