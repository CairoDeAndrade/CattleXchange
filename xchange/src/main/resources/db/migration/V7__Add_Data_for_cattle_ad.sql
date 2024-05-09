SELECT @user_id := bd_coduser FROM tuser WHERE bd_name = 'João';

SET @cattle_id = UNHEX(REPLACE(UUID(), '-', ''));

INSERT INTO TCATTLE_AD
(
    bd_codAd,
    bd_title,
    bd_desc,
    bd_unitValue,
    bd_quantity,
    bd_breed,
    bd_sex,
    bd_coduser,
    bd_city,
    bd_state,
    bd_adDate,
    bd_status
)
VALUES
    (
        @cattle_id,
        'Boi Angus',
        'Boi de raça Angus, conhecido por sua carne de alta qualidade',
        1500.00,
        1,
        'ANGUS',
        'M',
        @user_id,
        'Porto Alegre',
        'Rio Grande do Sul',
        CURDATE(),
        'ACTIVE'
    );

INSERT INTO TIMAGE_AD
(
    bd_codImage,
    bd_codAd,
    bd_sequence,
    bd_url
)
VALUES
    (
        UNHEX(REPLACE(UUID(), '-', '')),
        @cattle_id,
        1,
        'url_da_imagem_boi_angus.jpg'
    );

SET @cattle_id = UNHEX(REPLACE(UUID(), '-', ''));

INSERT INTO TCATTLE_AD
(
    bd_codAd,
    bd_title,
    bd_desc,
    bd_unitValue,
    bd_quantity,
    bd_breed,
    bd_sex,
    bd_coduser,
    bd_city,
    bd_state,
    bd_adDate,
    bd_status
)
VALUES
    (
        @cattle_id,
        'Boi Hereford',
        'Boi de raça Hereford, conhecido por sua adaptabilidade e rusticidade',
        1400.00,
        1,
        'HEREFORD',
        'M',
        @user_id,
        'Curitiba',
        'Paraná',
        CURDATE(),
        'ACTIVE'
    );

INSERT INTO TIMAGE_AD
(
    bd_codImage,
    bd_codAd,
    bd_sequence,
    bd_url
)
VALUES
    (
        UNHEX(REPLACE(UUID(), '-', '')),
        @cattle_id,
        1,
        'url_da_imagem_boi_hereford.jpg'
    );

SET @cattle_id = UNHEX(REPLACE(UUID(), '-', ''));

INSERT INTO TCATTLE_AD
(
    bd_codAd,
    bd_title,
    bd_desc,
    bd_unitValue,
    bd_quantity,
    bd_breed,
    bd_sex,
    bd_coduser,
    bd_city,
    bd_state,
    bd_adDate,
    bd_status
)
VALUES
    (
        @cattle_id,
        'Vaca Holandesa',
        'Vaca de raça Holandesa, conhecida por sua alta produção de leite',
        2000.00,
        1,
        'HOLANDESA',
        'F', -- Sexo feminino
        @user_id,
        'Porto Alegre',
        'Rio Grande do Sul',
        CURDATE(),
        'ACTIVE'
    );

INSERT INTO TIMAGE_AD
(
    bd_codImage,
    bd_codAd,
    bd_sequence,
    bd_url
)
VALUES
    (
        UNHEX(REPLACE(UUID(), '-', '')),
        @cattle_id,
        1,
        'url_da_imagem_vaca_holandesa.jpg'
    );


SET @cattle_id = UNHEX(REPLACE(UUID(), '-', ''));

INSERT INTO TCATTLE_AD
(
    bd_codAd,
    bd_title,
    bd_desc,
    bd_unitValue,
    bd_quantity,
    bd_breed,
    bd_sex,
    bd_coduser,
    bd_city,
    bd_state,
    bd_adDate,
    bd_status
)
VALUES
    (
        @cattle_id,
        'Vaca Charolês',
        'Vaca de raça Charolês, conhecida por sua carne de alta qualidade',
        1800.00,
        1,
        'CHAROLES',
        'F', -- Sexo feminino
        @user_id,
        'Curitiba',
        'Paraná',
        CURDATE(),
        'ACTIVE'
    );

INSERT INTO TIMAGE_AD
(
    bd_codImage,
    bd_codAd,
    bd_sequence,
    bd_url
)
VALUES
(
    UNHEX(REPLACE(UUID(), '-', '')),
    @cattle_id,
    1,
    'url_da_imagem_vaca_charoles.jpg'
);



SELECT @user_id := bd_coduser FROM tuser WHERE bd_name = 'Maria';

SET @cattle_id = UNHEX(REPLACE(UUID(), '-', ''));

INSERT INTO TCATTLE_AD
(
    bd_codAd,
    bd_title,
    bd_desc,
    bd_unitValue,
    bd_quantity,
    bd_breed,
    bd_sex,
    bd_coduser,
    bd_city,
    bd_state,
    bd_adDate,
    bd_status
)
VALUES
    (
        @cattle_id,
        'Touro Angus',
        'Touro de raça Angus, conhecido por sua adaptabilidade e qualidade de carne',
        3000.00,
        1,
        'ANGUS',
        'M',
        @user_id,
        'Porto Alegre',
        'Rio Grande do Sul',
        CURDATE(),
        'ACTIVE'
    );

INSERT INTO TIMAGE_AD
(
    bd_codImage,
    bd_codAd,
    bd_sequence,
    bd_url
)
VALUES
    (
        UNHEX(REPLACE(UUID(), '-', '')),
        @cattle_id,
        1,
        'url_da_imagem_touro_angus.jpg'
    );

SET @cattle_id = UNHEX(REPLACE(UUID(), '-', ''));

INSERT INTO TCATTLE_AD
(
    bd_codAd,
    bd_title,
    bd_desc,
    bd_unitValue,
    bd_quantity,
    bd_breed,
    bd_sex,
    bd_coduser,
    bd_city,
    bd_state,
    bd_adDate,
    bd_status
)
VALUES
    (
        @cattle_id,
        'Novilha Brangus',
        'Novilha de raça Brangus, resultado do cruzamento entre Angus e Brahman',
        2500.00,
        1,
        'BRANGUS',
        'F',
        @user_id,
        'Belo Horizonte',
        'Minas Gerais',
        CURDATE(),
        'ACTIVE'
    );

INSERT INTO TIMAGE_AD
(
    bd_codImage,
    bd_codAd,
    bd_sequence,
    bd_url
)
VALUES
    (
        UNHEX(REPLACE(UUID(), '-', '')),
        @cattle_id,
        1,
        'url_da_imagem_novilha_brangus.jpg'
    );