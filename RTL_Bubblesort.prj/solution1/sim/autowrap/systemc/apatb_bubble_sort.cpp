// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "ap_stream.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "arr"
#define AUTOTB_TVIN_arr  "../tv/cdatafile/c.bubble_sort.autotvin_arr.dat"
#define AUTOTB_TVOUT_arr  "../tv/cdatafile/c.bubble_sort.autotvout_arr.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "arr"
#define AUTOTB_TVOUT_PC_arr  "../tv/rtldatafile/rtl.bubble_sort.autotvout_arr.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			arr_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{arr " << arr_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int arr_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void bubble_sort (
long long arr[10]);

extern "C" void AESL_WRAP_bubble_sort (
long long arr[10])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "arr"
		aesl_fh.read(AUTOTB_TVOUT_PC_arr, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_arr, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_arr, AESL_token); // data

			sc_bv<64> *arr_pc_buffer = new sc_bv<64>[10];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'arr', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'arr', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					arr_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_arr, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_arr))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: arr
				{
					// bitslice(63, 0)
					// {
						// celement: arr(63, 0)
						// {
							sc_lv<64>* arr_lv0_0_9_1 = new sc_lv<64>[10];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: arr(63, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								if (&(arr[0]) != NULL) // check the null address if the c port is array or others
								{
									arr_lv0_0_9_1[hls_map_index].range(63, 0) = sc_bv<64>(arr_pc_buffer[hls_map_index].range(63, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: arr(63, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : arr[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : arr[0]
								// output_left_conversion : arr[i_0]
								// output_type_conversion : (arr_lv0_0_9_1[hls_map_index]).to_uint64()
								if (&(arr[0]) != NULL) // check the null address if the c port is array or others
								{
									arr[i_0] = (arr_lv0_0_9_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] arr_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "arr"
		char* tvin_arr = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_arr);
		char* tvout_arr = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_arr);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_arr, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_arr, tvin_arr);

		sc_bv<64>* arr_tvin_wrapc_buffer = new sc_bv<64>[10];

		// RTL Name: arr
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: arr(63, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : arr[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : arr[0]
						// regulate_c_name       : arr
						// input_type_conversion : arr[i_0]
						if (&(arr[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> arr_tmp_mem;
							arr_tmp_mem = arr[i_0];
							arr_tvin_wrapc_buffer[hls_map_index].range(63, 0) = arr_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvin_arr, "%s\n", (arr_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_arr, tvin_arr);
		}

		tcl_file.set_num(10, &tcl_file.arr_depth);
		sprintf(tvin_arr, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_arr, tvin_arr);

		// release memory allocation
		delete [] arr_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		bubble_sort(arr);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_arr, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_arr, tvout_arr);

		sc_bv<64>* arr_tvout_wrapc_buffer = new sc_bv<64>[10];

		// RTL Name: arr
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: arr(63, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : arr[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : arr[0]
						// regulate_c_name       : arr
						// input_type_conversion : arr[i_0]
						if (&(arr[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> arr_tmp_mem;
							arr_tmp_mem = arr[i_0];
							arr_tvout_wrapc_buffer[hls_map_index].range(63, 0) = arr_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvout_arr, "%s\n", (arr_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_arr, tvout_arr);
		}

		tcl_file.set_num(10, &tcl_file.arr_depth);
		sprintf(tvout_arr, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_arr, tvout_arr);

		// release memory allocation
		delete [] arr_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "arr"
		delete [] tvin_arr;
		delete [] tvout_arr;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

