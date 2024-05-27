# Layout of Simplified Data Encryption Standard (SDES)
- This is a Repo for Layout of Simplified Data Encryption Standard (SDES)

# Features
- Design & Implementation: Crafted a detailed schematic design, optimizing for signal propagation delays and resource utilization.
- Testing & Verification: Ensured algorithm integrity through rigorous testing with RTL model and developed a comprehensive test bench for robust performance assessment.
- Layout: Strategically placed components to minimize interference, maximize efficiency, and incorporate security features to safeguard sensitive data.


# SDES System
- simplified version of the Data Encryption Standard (DES) algorithm. It's primarily used for educational purposes due to its simplicity. S-DES operates on small blocks of data (8 bits) and uses a relatively short key (10 bits) compared to DES.
  
  ![Picture](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/386ddd27-822a-4e67-806e-4cffd41740a3)

# RTL Simulation Results
- Waveform
  - Plain Text : 10010111
  - Key sample 1 : 1010000010		Cipher Text : 00111000
  - key sample 2 : 1010000010		Cipher Text : 00011000

  ![Picture](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/2e2adff8-0b94-4b72-9eee-3fa6d0011a9e)

- Netlist
  - SDES
    
    ![Picture](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/c27ec093-4d37-46cf-aa50-a330d1c6e0e8)

  - Complex Function
    
    ![Picture1](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/39a933ac-c44f-4793-9c23-95f93f7fae5d)

  - S0 BOX

    ![Picture2](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/00ecf3f8-5fb4-45c7-a6cb-879dc506ea74)

  - S1 BOX

    ![Picture3](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/376e0610-babf-400c-a9d8-e5c355c1969d)


# SDES Schematic
  - Test Bench Block
    
    ![Picture5](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/e8e0bbe0-dc53-438f-b66f-c1082e854aa0)

  - Simulation

    ![Picture6](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/50e39215-9a9e-4d3c-a454-9984609a07c4)

  
# FINAL LAYOUT

  ![Picture4](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/6e73c3a4-ebeb-4f50-be7c-f1179c98e8a8)
  

# Verification

  - DRC

    ![Picture7](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/584ded2e-d297-42a9-9ce9-67465e14bfbe)

  - LVS

    ![Picture8](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/894ccb31-fffd-4791-9b17-81a445d1f671)

  - PEX

    ![Picture9](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/e3c59751-2860-47c6-9843-be30399cb997)

  - Post Layout Simulation

    ![Picture10](https://github.com/AyaRedaOsman/Layout-of-Simplified-Data-Encryption-Standard-S-DES-/assets/102327986/502fef96-61bc-47e1-a712-51196367e2c6)

