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


// wrapc file define: "available"
#define AUTOTB_TVIN_available  "../tv/cdatafile/c.banker_algorithm.autotvin_available.dat"
#define AUTOTB_TVOUT_available  "../tv/cdatafile/c.banker_algorithm.autotvout_available.dat"
// wrapc file define: "allocated"
#define AUTOTB_TVIN_allocated  "../tv/cdatafile/c.banker_algorithm.autotvin_allocated.dat"
#define AUTOTB_TVOUT_allocated  "../tv/cdatafile/c.banker_algorithm.autotvout_allocated.dat"
// wrapc file define: "need"
#define AUTOTB_TVIN_need  "../tv/cdatafile/c.banker_algorithm.autotvin_need.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.banker_algorithm.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "available"
#define AUTOTB_TVOUT_PC_available  "../tv/rtldatafile/rtl.banker_algorithm.autotvout_available.dat"
// tvout file define: "allocated"
#define AUTOTB_TVOUT_PC_allocated  "../tv/rtldatafile/rtl.banker_algorithm.autotvout_allocated.dat"
// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.banker_algorithm.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			available_depth = 0;
			allocated_depth = 0;
			need_depth = 0;
			ap_return_depth = 0;
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
			total_list << "{available " << available_depth << "}\n";
			total_list << "{allocated " << allocated_depth << "}\n";
			total_list << "{need " << need_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int available_depth;
		int allocated_depth;
		int need_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" long int banker_algorithm (
long long available[3],
long long allocated[4][3],
long long max[4][3],
long long need[4][3]);

extern "C" long int AESL_WRAP_banker_algorithm (
long long available[3],
long long allocated[4][3],
long long max[4][3],
long long need[4][3])
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

		long int AESL_return;

		// output port post check: "available"
		aesl_fh.read(AUTOTB_TVOUT_PC_available, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_available, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_available, AESL_token); // data

			sc_bv<64> *available_pc_buffer = new sc_bv<64>[3];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'available', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'available', possible cause: There are uninitialized variables in the C design." << endl;
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
					available_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_available, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_available))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: available
				{
					// bitslice(63, 0)
					// {
						// celement: available(63, 0)
						// {
							sc_lv<64>* available_lv0_0_2_1 = new sc_lv<64>[3];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: available(63, 0)
						{
							// carray: (0) => (2) @ (1)
							for (int i_0 = 0; i_0 <= 2; i_0 += 1)
							{
								if (&(available[0]) != NULL) // check the null address if the c port is array or others
								{
									available_lv0_0_2_1[hls_map_index].range(63, 0) = sc_bv<64>(available_pc_buffer[hls_map_index].range(63, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: available(63, 0)
						{
							// carray: (0) => (2) @ (1)
							for (int i_0 = 0; i_0 <= 2; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : available[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : available[0]
								// output_left_conversion : available[i_0]
								// output_type_conversion : (available_lv0_0_2_1[hls_map_index]).to_uint64()
								if (&(available[0]) != NULL) // check the null address if the c port is array or others
								{
									available[i_0] = (available_lv0_0_2_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] available_pc_buffer;
		}

		// output port post check: "allocated"
		aesl_fh.read(AUTOTB_TVOUT_PC_allocated, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_allocated, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_allocated, AESL_token); // data

			sc_bv<64> *allocated_pc_buffer = new sc_bv<64>[12];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'allocated', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'allocated', possible cause: There are uninitialized variables in the C design." << endl;
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
					allocated_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_allocated, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_allocated))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: allocated
				{
					// bitslice(63, 0)
					// {
						// celement: allocated(63, 0)
						// {
							sc_lv<64>* allocated_lv0_0_3_1_lv1_0_2_1 = new sc_lv<64>[12];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: allocated(63, 0)
						{
							// carray: (0) => (3) @ (1)
							for (int i_0 = 0; i_0 <= 3; i_0 += 1)
							{
								// carray: (0) => (2) @ (1)
								for (int i_1 = 0; i_1 <= 2; i_1 += 1)
								{
									if (&(allocated[0][0]) != NULL) // check the null address if the c port is array or others
									{
										allocated_lv0_0_3_1_lv1_0_2_1[hls_map_index].range(63, 0) = sc_bv<64>(allocated_pc_buffer[hls_map_index].range(63, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: allocated(63, 0)
						{
							// carray: (0) => (3) @ (1)
							for (int i_0 = 0; i_0 <= 3; i_0 += 1)
							{
								// carray: (0) => (2) @ (1)
								for (int i_1 = 0; i_1 <= 2; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : allocated[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : allocated[0][0]
									// output_left_conversion : allocated[i_0][i_1]
									// output_type_conversion : (allocated_lv0_0_3_1_lv1_0_2_1[hls_map_index]).to_uint64()
									if (&(allocated[0][0]) != NULL) // check the null address if the c port is array or others
									{
										allocated[i_0][i_1] = (allocated_lv0_0_3_1_lv1_0_2_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] allocated_pc_buffer;
		}

		// output port post check: "ap_return"
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data

			sc_bv<64> ap_return_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
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
					ap_return_pc_buffer = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ap_return
				{
					// bitslice(63, 0)
					// {
						// celement: return(63, 0)
						// {
							sc_lv<64> return_lv0_0_1_0;
						// }
					// }

					// bitslice(63, 0)
					{
						// celement: return(63, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									return_lv0_0_1_0.range(63, 0) = sc_bv<64>(ap_return_pc_buffer.range(63, 0));
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						// celement: return(63, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : AESL_return
								// output_type_conversion : (return_lv0_0_1_0).to_uint64()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									AESL_return = (return_lv0_0_1_0).to_uint64();
								}
							}
						}
					}
				}
			}
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "available"
		char* tvin_available = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_available);
		char* tvout_available = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_available);

		// "allocated"
		char* tvin_allocated = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_allocated);
		char* tvout_allocated = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_allocated);

		// "need"
		char* tvin_need = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_need);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_available, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_available, tvin_available);

		sc_bv<64>* available_tvin_wrapc_buffer = new sc_bv<64>[3];

		// RTL Name: available
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: available(63, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : available[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : available[0]
						// regulate_c_name       : available
						// input_type_conversion : available[i_0]
						if (&(available[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> available_tmp_mem;
							available_tmp_mem = available[i_0];
							available_tvin_wrapc_buffer[hls_map_index].range(63, 0) = available_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3; i++)
		{
			sprintf(tvin_available, "%s\n", (available_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_available, tvin_available);
		}

		tcl_file.set_num(3, &tcl_file.available_depth);
		sprintf(tvin_available, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_available, tvin_available);

		// release memory allocation
		delete [] available_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_allocated, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_allocated, tvin_allocated);

		sc_bv<64>* allocated_tvin_wrapc_buffer = new sc_bv<64>[12];

		// RTL Name: allocated
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: allocated(63, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : allocated[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : allocated[0][0]
							// regulate_c_name       : allocated
							// input_type_conversion : allocated[i_0][i_1]
							if (&(allocated[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<64> allocated_tmp_mem;
								allocated_tmp_mem = allocated[i_0][i_1];
								allocated_tvin_wrapc_buffer[hls_map_index].range(63, 0) = allocated_tmp_mem.range(63, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 12; i++)
		{
			sprintf(tvin_allocated, "%s\n", (allocated_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_allocated, tvin_allocated);
		}

		tcl_file.set_num(12, &tcl_file.allocated_depth);
		sprintf(tvin_allocated, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_allocated, tvin_allocated);

		// release memory allocation
		delete [] allocated_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_need, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_need, tvin_need);

		sc_bv<64>* need_tvin_wrapc_buffer = new sc_bv<64>[12];

		// RTL Name: need
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: need(63, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : need[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : need[0][0]
							// regulate_c_name       : need
							// input_type_conversion : need[i_0][i_1]
							if (&(need[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<64> need_tmp_mem;
								need_tmp_mem = need[i_0][i_1];
								need_tvin_wrapc_buffer[hls_map_index].range(63, 0) = need_tmp_mem.range(63, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 12; i++)
		{
			sprintf(tvin_need, "%s\n", (need_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_need, tvin_need);
		}

		tcl_file.set_num(12, &tcl_file.need_depth);
		sprintf(tvin_need, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_need, tvin_need);

		// release memory allocation
		delete [] need_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		long int AESL_return = banker_algorithm(available, allocated, max, need);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_available, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_available, tvout_available);

		sc_bv<64>* available_tvout_wrapc_buffer = new sc_bv<64>[3];

		// RTL Name: available
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: available(63, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : available[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : available[0]
						// regulate_c_name       : available
						// input_type_conversion : available[i_0]
						if (&(available[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> available_tmp_mem;
							available_tmp_mem = available[i_0];
							available_tvout_wrapc_buffer[hls_map_index].range(63, 0) = available_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3; i++)
		{
			sprintf(tvout_available, "%s\n", (available_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_available, tvout_available);
		}

		tcl_file.set_num(3, &tcl_file.available_depth);
		sprintf(tvout_available, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_available, tvout_available);

		// release memory allocation
		delete [] available_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_allocated, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_allocated, tvout_allocated);

		sc_bv<64>* allocated_tvout_wrapc_buffer = new sc_bv<64>[12];

		// RTL Name: allocated
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: allocated(63, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : allocated[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : allocated[0][0]
							// regulate_c_name       : allocated
							// input_type_conversion : allocated[i_0][i_1]
							if (&(allocated[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<64> allocated_tmp_mem;
								allocated_tmp_mem = allocated[i_0][i_1];
								allocated_tvout_wrapc_buffer[hls_map_index].range(63, 0) = allocated_tmp_mem.range(63, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 12; i++)
		{
			sprintf(tvout_allocated, "%s\n", (allocated_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_allocated, tvout_allocated);
		}

		tcl_file.set_num(12, &tcl_file.allocated_depth);
		sprintf(tvout_allocated, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_allocated, tvout_allocated);

		// release memory allocation
		delete [] allocated_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<64> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(63, 0)
			{
				// celement: return(63, 0)
				{
					// carray: (0) => (1) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : return
						// input_type_conversion : AESL_return
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> return_tmp_mem;
							return_tmp_mem = AESL_return;
							ap_return_tvout_wrapc_buffer.range(63, 0) = return_tmp_mem.range(63, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);
		}

		tcl_file.set_num(1, &tcl_file.ap_return_depth);
		sprintf(tvout_ap_return, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "available"
		delete [] tvin_available;
		delete [] tvout_available;
		// release memory allocation: "allocated"
		delete [] tvin_allocated;
		delete [] tvout_allocated;
		// release memory allocation: "need"
		delete [] tvin_need;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}
