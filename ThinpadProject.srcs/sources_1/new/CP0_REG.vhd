library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use WORK.INCLUDE.ALL;

entity CP0_REG is
    Port ( rst : in STD_LOGIC;													-- Reset
           clk : in STD_LOGIC;

           raddr_i : in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           waddr_i : in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           data_i : in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
           we_i : in STD_LOGIC;

           int_i : in STD_LOGIC_VECTOR(5 downto 0);
           
           data_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           count_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           compare_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           status_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           cause_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           epc_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           config_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           prid_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

           timer_int_o : out STD_LOGIC);
end CP0_REG;

architecture Behavioral of CP0_REG is
    begin
        process (clk'event)
        begin
            if rising_edge(clk) then
                if (rst = RST_ENABLE) then
                    count_o <= REG_ZERO_DATA;
                    compare_o <= REG_ZERO_DATA;
                    status_o <= STATUS_CU_CP0 & x"0000000";--status瀵勫瓨鍣ㄧ殑CU锟??0001锛岃〃绀哄崗澶勭悊鍣–P0瀛樺湪
                    cause_o <= REG_ZERO_DATA;
                    epc_o <= REG_ZERO_DATA;
                    config_o <= b"00000000000000001000000000000000";--config瀵勫瓨鍣ㄧ殑BE锟??1锛岃〃绀築ig-Endian锛汳T锟??00锛岃〃绀烘病鏈塎MU
                    prid_o <= b"00000000010011000000000100000010";--鍒朵綔鑰呮槸L锛屽搴旂殑锟??0x48锛岀被鍨嬫槸0x1锛屽熀鏈被鍨嬶紝鐗堟湰鍙锋槸1.0

                    timer_int_o <= INTERRUPT_NOT_ASSERT;
                    
                else
                    count_o <= count_o + 1;
                    cause_o(15 downto 10) <= int_i;

                    if (compare_o /= REG_ZERO_DATA) and (count_o = compare_o) then
                        timer_int_o <= INTERRUPT_ASSERT;
                    end if;

                    if we_i = '1' then
                        case( waddr_i ) is
                            when CP0_REG_COUNT =>
                                count_o <= data_i;
                            
                            when CP0_REG_COMPARE =>
                                compare_o <= data_i;        
                                timer_int_o <= INTERRUPT_NOT_ASSERT;

                            when CP0_REG_STATUS =>
                                status_o <= data_i;

                            when CP0_REG_EPC =>
                                epc_o <= data_i;
                            
                            when CP0_REG_CAUSE =>
                                cause_o(9 downto 8) <= data_i(9 downto 8);
                                cause_o(23) <= data_i(23);
                                cause_o(22) <= data_i(22);

                            when others =>
                        
                        end case ;
                    end if ;
                end if;
            end if;
        end process;

        process(all)
        begin
            if rst = RST_ENABLE then
                data_o <= REG_ZERO_DATA;
            end if;
                case( raddr_i ) is
                    when CP0_REG_COUNT =>
                        data_o <= count_o ;
                    when CP0_REG_COMPARE =>
                        data_o <= compare_o ;
                    when CP0_REG_STATUS =>
                        data_o <= status_o ;
                    when CP0_REG_CAUSE =>
                        data_o <= cause_o ;
                    when CP0_REG_EPC =>
                        data_o <= epc_o ;
                    when CP0_REG_PrId =>
                        data_o <= prid_o ;
                    when CP0_REG_CONFIG =>
                        data_o <= config_o;
                    when others =>
                end case ;
        end process;


    end Behavioral;