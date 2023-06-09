bits 16

org 0x7C00  ; Set the bootloader entry point

start:
    mov ax, 0x07C0  ; Set the data segment to where the bootloader is loaded
    mov ds, ax
    mov es, ax
    
    ; Print a message to indicate the kernel has started
    mov si, msg
    call print_string
    
    ; Load and execute batch file
    mov si, batch_file
    call load_file
    
    jmp $

; Function to print a null-terminated string
print_string:
    mov ah, 0x0E  ; BIOS teletype function
    xor bh, bh    ; Page number (0)
    
    .repeat:
        lodsb       ; Load next character from SI
        cmp al, 0   ; Check if end of string
        je .done
        int 0x10    ; Print character
        jmp .repeat
    
    .done:
        ret

; Function to load a file into memory
load_file:
    mov ah, 0x02  ; BIOS read sector function
    mov al, 1     ; Number of sectors to read
    mov ch, 0     ; Track number
    mov cl, 2     ; Sector number
    mov dh, 0     ; Head number
    mov dl, 0     ; Drive number (boot drive)
    mov bx, 0x8000  ; Destination memory address

    int 0x13      ; Call BIOS interrupt

    jc .error     ; If carry flag is set, an error occurred

    ret

.error:
    mov si, err_msg
    call print_string
    jmp $

msg db "Microkernel loaded.", 0
err_msg db "Error loading batch file.", 0

batch_file db "BATCH1.BAT", 0

times 510-($-$$) db 0
dw 0xAA55  ; Boot signature
