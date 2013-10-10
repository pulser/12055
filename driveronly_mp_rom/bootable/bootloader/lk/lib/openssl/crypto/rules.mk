LOCAL_DIR:= $(GET_LOCAL_DIR)

#Additional flags already in android-config.mk
CFLAGS += -DOPENSSL_BN_ASM_MONT -DAES_ASM -DSHA1_ASM -DSHA256_ASM -DSHA512_ASM \
	-DOPENSSL_NO_STDIO -DOPENSSL_NO_FP_API -DNO_WINDOWS_BRAINDEATH \
	-DOPENSSL_IMPLEMENTS_strncasecmp -DOPENSSL_NO_DSA -DOPENSSL_NO_DH \
	-DGETPID_IS_MEANINGLESS -DOPENSSL_NO_EC -DOPENSSL_NO_DES

INCLUDES += \
			-I$(LOCAL_DIR) \
			-I$(LOCAL_DIR)/asn1 \
			-I$(LOCAL_DIR)/evp \
			-I$(LOCAL_DIR)/x509 \
			-I$(LOCAL_DIR)/../.. \
			-I$(LOCAL_DIR)/../include \
			-I$(LOCAL_DIR)/../include/openssl

OBJS +=  $(LOCAL_DIR)/bn/asm/armv4-mont.o

OBJS += \
	$(LOCAL_DIR)/bio/b_print.o \
	$(LOCAL_DIR)/cryptlib.o \
	$(LOCAL_DIR)/mem.o \
	$(LOCAL_DIR)/mem_clr.o \
	$(LOCAL_DIR)/mem_dbg.o \
	$(LOCAL_DIR)/cversion.o \
	$(LOCAL_DIR)/ex_data.o \
	$(LOCAL_DIR)/cpt_err.o \
	$(LOCAL_DIR)/ebcdic.o \
	$(LOCAL_DIR)/o_str.o \
	$(LOCAL_DIR)/aes/aes_cbc.o \
	$(LOCAL_DIR)/aes/aes_cfb.o \
	$(LOCAL_DIR)/aes/aes_ctr.o \
	$(LOCAL_DIR)/aes/aes_ecb.o \
	$(LOCAL_DIR)/aes/aes_misc.o \
	$(LOCAL_DIR)/aes/aes_ofb.o \
	$(LOCAL_DIR)/aes/aes_wrap.o \
	$(LOCAL_DIR)/asn1/a_bitstr.o \
	$(LOCAL_DIR)/asn1/a_bool.o \
	$(LOCAL_DIR)/asn1/a_bytes.o \
	$(LOCAL_DIR)/asn1/a_d2i_fp.o \
	$(LOCAL_DIR)/asn1/a_digest.o \
	$(LOCAL_DIR)/asn1/a_dup.o \
	$(LOCAL_DIR)/asn1/a_enum.o \
	$(LOCAL_DIR)/asn1/a_i2d_fp.o \
	$(LOCAL_DIR)/asn1/a_int.o \
	$(LOCAL_DIR)/asn1/a_mbstr.o \
	$(LOCAL_DIR)/asn1/a_object.o \
	$(LOCAL_DIR)/asn1/a_octet.o \
	$(LOCAL_DIR)/asn1/a_print.o \
	$(LOCAL_DIR)/asn1/a_sign.o \
	$(LOCAL_DIR)/asn1/a_strnid.o \
	$(LOCAL_DIR)/asn1/a_strex.o \
	$(LOCAL_DIR)/asn1/a_time.o \
	$(LOCAL_DIR)/asn1/a_type.o \
	$(LOCAL_DIR)/asn1/a_utctm.o \
	$(LOCAL_DIR)/asn1/a_utf8.o \
	$(LOCAL_DIR)/asn1/a_verify.o \
	$(LOCAL_DIR)/asn1/ameth_lib.o \
	$(LOCAL_DIR)/asn1/asn1_err.o \
	$(LOCAL_DIR)/asn1/asn1_lib.o \
	$(LOCAL_DIR)/asn1/asn1_par.o \
	$(LOCAL_DIR)/asn1/asn_mime.o \
	$(LOCAL_DIR)/asn1/asn_moid.o \
	$(LOCAL_DIR)/asn1/asn_pack.o \
	$(LOCAL_DIR)/asn1/bio_asn1.o \
	$(LOCAL_DIR)/asn1/d2i_pr.o \
	$(LOCAL_DIR)/asn1/d2i_pu.o \
	$(LOCAL_DIR)/asn1/evp_asn1.o \
	$(LOCAL_DIR)/asn1/f_enum.o \
	$(LOCAL_DIR)/asn1/f_int.o \
	$(LOCAL_DIR)/asn1/f_string.o \
	$(LOCAL_DIR)/asn1/i2d_pr.o \
	$(LOCAL_DIR)/asn1/i2d_pu.o \
	$(LOCAL_DIR)/asn1/n_pkey.o \
	$(LOCAL_DIR)/asn1/nsseq.o \
	$(LOCAL_DIR)/asn1/p5_pbe.o \
	$(LOCAL_DIR)/asn1/p5_pbev2.o \
	$(LOCAL_DIR)/asn1/p8_pkey.o \
	$(LOCAL_DIR)/asn1/t_bitst.o \
	$(LOCAL_DIR)/asn1/t_crl.o \
	$(LOCAL_DIR)/asn1/t_req.o \
	$(LOCAL_DIR)/asn1/t_spki.o \
	$(LOCAL_DIR)/asn1/t_x509.o \
	$(LOCAL_DIR)/asn1/t_x509a.o \
	$(LOCAL_DIR)/asn1/tasn_enc.o \
	$(LOCAL_DIR)/asn1/tasn_dec.o \
	$(LOCAL_DIR)/asn1/tasn_fre.o \
	$(LOCAL_DIR)/asn1/tasn_new.o \
	$(LOCAL_DIR)/asn1/tasn_prn.o \
	$(LOCAL_DIR)/asn1/tasn_typ.o \
	$(LOCAL_DIR)/asn1/tasn_utl.o \
	$(LOCAL_DIR)/asn1/x_algor.o \
	$(LOCAL_DIR)/asn1/x_attrib.o \
	$(LOCAL_DIR)/asn1/x_bignum.o \
	$(LOCAL_DIR)/asn1/x_crl.o \
	$(LOCAL_DIR)/asn1/x_exten.o \
	$(LOCAL_DIR)/asn1/x_info.o \
	$(LOCAL_DIR)/asn1/x_long.o \
	$(LOCAL_DIR)/asn1/x_name.o \
	$(LOCAL_DIR)/asn1/x_nx509.o \
	$(LOCAL_DIR)/asn1/x_pkey.o \
	$(LOCAL_DIR)/asn1/x_pubkey.o \
	$(LOCAL_DIR)/asn1/x_req.o \
	$(LOCAL_DIR)/asn1/x_spki.o \
	$(LOCAL_DIR)/asn1/x_val.o \
	$(LOCAL_DIR)/asn1/x_x509.o \
	$(LOCAL_DIR)/asn1/x_x509a.o \
	$(LOCAL_DIR)/bf/bf_cfb64.o \
	$(LOCAL_DIR)/bf/bf_ecb.o \
	$(LOCAL_DIR)/bf/bf_enc.o \
	$(LOCAL_DIR)/bf/bf_ofb64.o \
	$(LOCAL_DIR)/bf/bf_skey.o \
	$(LOCAL_DIR)/bn/bn_add.o \
	$(LOCAL_DIR)/bn/bn_asm.o \
	$(LOCAL_DIR)/bn/bn_blind.o \
	$(LOCAL_DIR)/bn/bn_ctx.o \
	$(LOCAL_DIR)/bn/bn_div.o \
	$(LOCAL_DIR)/bn/bn_err.o \
	$(LOCAL_DIR)/bn/bn_exp.o \
	$(LOCAL_DIR)/bn/bn_exp2.o \
	$(LOCAL_DIR)/bn/bn_gcd.o \
	$(LOCAL_DIR)/bn/bn_gf2m.o \
	$(LOCAL_DIR)/bn/bn_kron.o \
	$(LOCAL_DIR)/bn/bn_lib.o \
	$(LOCAL_DIR)/bn/bn_mod.o \
	$(LOCAL_DIR)/bn/bn_mont.o \
	$(LOCAL_DIR)/bn/bn_mpi.o \
	$(LOCAL_DIR)/bn/bn_mul.o \
	$(LOCAL_DIR)/bn/bn_nist.o \
	$(LOCAL_DIR)/bn/bn_prime.o \
	$(LOCAL_DIR)/bn/bn_print.o \
	$(LOCAL_DIR)/bn/bn_recp.o \
	$(LOCAL_DIR)/bn/bn_shift.o \
	$(LOCAL_DIR)/bn/bn_sqr.o \
	$(LOCAL_DIR)/bn/bn_sqrt.o \
	$(LOCAL_DIR)/bn/bn_word.o \
	$(LOCAL_DIR)/buffer/buf_err.o \
	$(LOCAL_DIR)/buffer/buffer.o \
	$(LOCAL_DIR)/conf/conf_api.o \
	$(LOCAL_DIR)/conf/conf_def.o \
	$(LOCAL_DIR)/conf/conf_err.o \
	$(LOCAL_DIR)/conf/conf_lib.o \
	$(LOCAL_DIR)/conf/conf_mall.o \
	$(LOCAL_DIR)/err/err.o \
	$(LOCAL_DIR)/err/err_all.o \
	$(LOCAL_DIR)/err/err_prn.o \
	$(LOCAL_DIR)/evp/c_all.o \
	$(LOCAL_DIR)/evp/c_allc.o \
	$(LOCAL_DIR)/evp/c_alld.o \
	$(LOCAL_DIR)/evp/digest.o \
	$(LOCAL_DIR)/evp/e_aes.o \
	$(LOCAL_DIR)/evp/e_bf.o \
	$(LOCAL_DIR)/evp/e_des.o \
	$(LOCAL_DIR)/evp/e_des3.o \
	$(LOCAL_DIR)/evp/e_null.o \
	$(LOCAL_DIR)/evp/e_old.o \
	$(LOCAL_DIR)/evp/e_rc2.o \
	$(LOCAL_DIR)/evp/e_rc4.o \
	$(LOCAL_DIR)/evp/e_rc5.o \
	$(LOCAL_DIR)/evp/e_xcbc_d.o \
	$(LOCAL_DIR)/evp/encode.o \
	$(LOCAL_DIR)/evp/evp_acnf.o \
	$(LOCAL_DIR)/evp/evp_enc.o \
	$(LOCAL_DIR)/evp/evp_err.o \
	$(LOCAL_DIR)/evp/evp_key.o \
	$(LOCAL_DIR)/evp/evp_lib.o \
	$(LOCAL_DIR)/evp/evp_pbe.o \
	$(LOCAL_DIR)/evp/evp_pkey.o \
	$(LOCAL_DIR)/evp/m_dss.o \
	$(LOCAL_DIR)/evp/m_dss1.o \
	$(LOCAL_DIR)/evp/m_mdc2.o \
	$(LOCAL_DIR)/evp/m_null.o \
	$(LOCAL_DIR)/evp/m_ripemd.o \
	$(LOCAL_DIR)/evp/m_sha1.o \
	$(LOCAL_DIR)/evp/m_sigver.o \
	$(LOCAL_DIR)/evp/m_wp.o \
	$(LOCAL_DIR)/evp/names.o \
	$(LOCAL_DIR)/evp/p5_crpt.o \
	$(LOCAL_DIR)/evp/p5_crpt2.o \
	$(LOCAL_DIR)/evp/p_dec.o \
	$(LOCAL_DIR)/evp/p_enc.o \
	$(LOCAL_DIR)/evp/p_lib.o \
	$(LOCAL_DIR)/evp/p_open.o \
	$(LOCAL_DIR)/evp/p_seal.o \
	$(LOCAL_DIR)/evp/p_sign.o \
	$(LOCAL_DIR)/evp/p_verify.o \
	$(LOCAL_DIR)/evp/pmeth_fn.o \
	$(LOCAL_DIR)/evp/pmeth_gn.o \
	$(LOCAL_DIR)/evp/pmeth_lib.o \
	$(LOCAL_DIR)/lhash/lh_stats.o \
	$(LOCAL_DIR)/lhash/lhash.o \
	$(LOCAL_DIR)/md4/md4_dgst.o \
	$(LOCAL_DIR)/md4/md4_one.o \
	$(LOCAL_DIR)/md5/md5_dgst.o \
	$(LOCAL_DIR)/md5/md5_one.o \
	$(LOCAL_DIR)/modes/cbc128.o \
	$(LOCAL_DIR)/modes/cfb128.o \
	$(LOCAL_DIR)/modes/ctr128.o \
	$(LOCAL_DIR)/modes/ofb128.o \
	$(LOCAL_DIR)/objects/obj_dat.o \
	$(LOCAL_DIR)/objects/obj_err.o \
	$(LOCAL_DIR)/objects/obj_lib.o \
	$(LOCAL_DIR)/objects/obj_xref.o \
	$(LOCAL_DIR)/objects/o_names.o \
	$(LOCAL_DIR)/pkcs12/p12_add.o \
	$(LOCAL_DIR)/pkcs12/p12_asn.o \
	$(LOCAL_DIR)/pkcs12/p12_attr.o \
	$(LOCAL_DIR)/pkcs12/p12_crpt.o \
	$(LOCAL_DIR)/pkcs12/p12_crt.o \
	$(LOCAL_DIR)/pkcs12/p12_decr.o \
	$(LOCAL_DIR)/pkcs12/p12_init.o \
	$(LOCAL_DIR)/pkcs12/p12_key.o \
	$(LOCAL_DIR)/pkcs12/p12_kiss.o \
	$(LOCAL_DIR)/pkcs12/p12_mutl.o \
	$(LOCAL_DIR)/pkcs12/p12_npas.o \
	$(LOCAL_DIR)/pkcs12/p12_p8d.o \
	$(LOCAL_DIR)/pkcs12/p12_p8e.o \
	$(LOCAL_DIR)/pkcs12/p12_utl.o \
	$(LOCAL_DIR)/pkcs12/pk12err.o \
	$(LOCAL_DIR)/pkcs7/pk7_asn1.o \
	$(LOCAL_DIR)/pkcs7/pk7_attr.o \
	$(LOCAL_DIR)/pkcs7/pk7_doit.o \
	$(LOCAL_DIR)/pkcs7/pk7_lib.o \
	$(LOCAL_DIR)/pkcs7/pk7_mime.o \
	$(LOCAL_DIR)/pkcs7/pk7_smime.o \
	$(LOCAL_DIR)/pkcs7/pkcs7err.o \
	$(LOCAL_DIR)/rc2/rc2_cbc.o \
	$(LOCAL_DIR)/rc2/rc2_ecb.o \
	$(LOCAL_DIR)/rc2/rc2_skey.o \
	$(LOCAL_DIR)/rc2/rc2cfb64.o \
	$(LOCAL_DIR)/rc2/rc2ofb64.o \
	$(LOCAL_DIR)/rc4/rc4_enc.o \
	$(LOCAL_DIR)/rc4/rc4_skey.o \
	$(LOCAL_DIR)/ripemd/rmd_dgst.o \
	$(LOCAL_DIR)/ripemd/rmd_one.o \
	$(LOCAL_DIR)/rsa/rsa_ameth.o \
	$(LOCAL_DIR)/rsa/rsa_asn1.o \
	$(LOCAL_DIR)/rsa/rsa_chk.o \
	$(LOCAL_DIR)/rsa/rsa_eay.o \
	$(LOCAL_DIR)/rsa/rsa_err.o \
	$(LOCAL_DIR)/rsa/rsa_gen.o \
	$(LOCAL_DIR)/rsa/rsa_lib.o \
	$(LOCAL_DIR)/rsa/rsa_none.o \
	$(LOCAL_DIR)/rsa/rsa_null.o \
	$(LOCAL_DIR)/rsa/rsa_pk1.o \
	$(LOCAL_DIR)/rsa/rsa_pmeth.o \
	$(LOCAL_DIR)/rsa/rsa_prn.o \
	$(LOCAL_DIR)/rsa/rsa_pss.o \
	$(LOCAL_DIR)/rsa/rsa_sign.o \
	$(LOCAL_DIR)/rsa/rsa_saos.o \
	$(LOCAL_DIR)/rsa/rsa_x931.o \
	$(LOCAL_DIR)/sha/sha1_one.o \
	$(LOCAL_DIR)/sha/sha1dgst.o \
	$(LOCAL_DIR)/sha/sha256.o \
	$(LOCAL_DIR)/sha/sha512.o \
	$(LOCAL_DIR)/sha/sha_dgst.o \
	$(LOCAL_DIR)/stack/stack.o \
	$(LOCAL_DIR)/ts/ts_err.o \
	$(LOCAL_DIR)/txt_db/txt_db.o \
	$(LOCAL_DIR)/x509/x509_att.o \
	$(LOCAL_DIR)/x509/x509_cmp.o \
	$(LOCAL_DIR)/x509/x509_d2.o \
	$(LOCAL_DIR)/x509/x509_def.o \
	$(LOCAL_DIR)/x509/x509_err.o \
	$(LOCAL_DIR)/x509/x509_ext.o \
	$(LOCAL_DIR)/x509/x509_lu.o \
	$(LOCAL_DIR)/x509/x509_obj.o \
	$(LOCAL_DIR)/x509/x509_r2x.o \
	$(LOCAL_DIR)/x509/x509_req.o \
	$(LOCAL_DIR)/x509/x509_set.o \
	$(LOCAL_DIR)/x509/x509_trs.o \
	$(LOCAL_DIR)/x509/x509_txt.o \
	$(LOCAL_DIR)/x509/x509_v3.o \
	$(LOCAL_DIR)/x509/x509_vfy.o \
	$(LOCAL_DIR)/x509/x509_vpm.o \
	$(LOCAL_DIR)/x509/x509cset.o \
	$(LOCAL_DIR)/x509/x509name.o \
	$(LOCAL_DIR)/x509/x509rset.o \
	$(LOCAL_DIR)/x509/x509spki.o \
	$(LOCAL_DIR)/x509/x509type.o \
	$(LOCAL_DIR)/x509/x_all.o \
	$(LOCAL_DIR)/x509v3/pcy_cache.o \
	$(LOCAL_DIR)/x509v3/pcy_data.o \
	$(LOCAL_DIR)/x509v3/pcy_lib.o \
	$(LOCAL_DIR)/x509v3/pcy_map.o \
	$(LOCAL_DIR)/x509v3/pcy_node.o \
	$(LOCAL_DIR)/x509v3/pcy_tree.o \
	$(LOCAL_DIR)/x509v3/v3_akey.o \
	$(LOCAL_DIR)/x509v3/v3_akeya.o \
	$(LOCAL_DIR)/x509v3/v3_alt.o \
	$(LOCAL_DIR)/x509v3/v3_bcons.o \
	$(LOCAL_DIR)/x509v3/v3_bitst.o \
	$(LOCAL_DIR)/x509v3/v3_conf.o \
	$(LOCAL_DIR)/x509v3/v3_cpols.o \
	$(LOCAL_DIR)/x509v3/v3_crld.o \
	$(LOCAL_DIR)/x509v3/v3_enum.o \
	$(LOCAL_DIR)/x509v3/v3_extku.o \
	$(LOCAL_DIR)/x509v3/v3_genn.o \
	$(LOCAL_DIR)/x509v3/v3_ia5.o \
	$(LOCAL_DIR)/x509v3/v3_info.o \
	$(LOCAL_DIR)/x509v3/v3_int.o \
	$(LOCAL_DIR)/x509v3/v3_lib.o \
	$(LOCAL_DIR)/x509v3/v3_ncons.o \
	$(LOCAL_DIR)/x509v3/v3_ocsp.o \
	$(LOCAL_DIR)/x509v3/v3_pci.o \
	$(LOCAL_DIR)/x509v3/v3_pcia.o \
	$(LOCAL_DIR)/x509v3/v3_pcons.o \
	$(LOCAL_DIR)/x509v3/v3_pku.o \
	$(LOCAL_DIR)/x509v3/v3_pmaps.o \
	$(LOCAL_DIR)/x509v3/v3_prn.o \
	$(LOCAL_DIR)/x509v3/v3_purp.o \
	$(LOCAL_DIR)/x509v3/v3_skey.o \
	$(LOCAL_DIR)/x509v3/v3_sxnet.o \
	$(LOCAL_DIR)/x509v3/v3err.o \
	$(LOCAL_DIR)/x509v3/v3_utl.o \
	$(LOCAL_DIR)/sha/asm/sha1-armv4-large.o \
	$(LOCAL_DIR)/sha/asm/sha256-armv4.o

include $(LOCAL_PATH)/android-config.mk

## Removed files from original openssl in Android space

arm_src_files := \
    $(LOCAL_DIR)/aes/asm/aes-armv4.o \
    $(LOCAL_DIR)/bn/asm/armv4-mont.o \
    $(LOCAL_DIR)/sha/asm/sha512-armv4.o

non_arm_src_files := aes/aes_core.c

removed_source_files := uid.o o_time.o o_dir.o \
	/asn1/a_gentm.o \
	/asn1/bio_ndef.o \
	$(LOCAL_DIR)/asn1/asn1_gen.o \
	$(LOCAL_DIR)/asn1/a_set.o \
	$(LOCAL_DIR)/bio/b_dump.o \
	$(LOCAL_DIR)/bio/b_sock.o \
	$(LOCAL_DIR)/bio/bf_buff.o \
	$(LOCAL_DIR)/bio/bf_nbio.o \
	$(LOCAL_DIR)/bio/bf_null.o \
	$(LOCAL_DIR)/bio/bio_cb.o \
	$(LOCAL_DIR)/bio/bio_err.o \
	$(LOCAL_DIR)/bio/bio_lib.o \
	$(LOCAL_DIR)/bio/bss_acpt.o \
	$(LOCAL_DIR)/bio/bss_bio.o \
	$(LOCAL_DIR)/bio/bss_conn.o \
	$(LOCAL_DIR)/bio/bss_dgram.o \
	$(LOCAL_DIR)/bio/bss_fd.o \
	$(LOCAL_DIR)/bio/bss_file.o \
	$(LOCAL_DIR)/bio/bss_log.o \
	$(LOCAL_DIR)/bio/bss_mem.o \
	$(LOCAL_DIR)/bio/bss_null.o \
	$(LOCAL_DIR)/bio/bss_sock.o \
	$(LOCAL_DIR)/comp/c_rle.o \
	$(LOCAL_DIR)/comp/c_zlib.o \
	$(LOCAL_DIR)/comp/comp_err.o \
	$(LOCAL_DIR)/comp/comp_lib.o \
	$(LOCAL_DIR)/conf/conf_mod.o \
	$(LOCAL_DIR)/conf/conf_sap.o \
	$(LOCAL_DIR)/des/cbc_cksm.o \
	$(LOCAL_DIR)/des/cbc_enc.o \
	$(LOCAL_DIR)/des/cfb64ede.o \
	$(LOCAL_DIR)/des/cfb64enc.o \
	$(LOCAL_DIR)/des/cfb_enc.o \
	$(LOCAL_DIR)/des/des_enc.o \
	$(LOCAL_DIR)/des/des_old.o \
	$(LOCAL_DIR)/des/des_old2.o \
	$(LOCAL_DIR)/des/ecb3_enc.o \
	$(LOCAL_DIR)/des/ecb_enc.o \
	$(LOCAL_DIR)/des/ede_cbcm_enc.o \
	$(LOCAL_DIR)/des/enc_read.o \
	$(LOCAL_DIR)/des/enc_writ.o \
	$(LOCAL_DIR)/des/fcrypt.o \
	$(LOCAL_DIR)/des/fcrypt_b.o \
	$(LOCAL_DIR)/des/ofb64ede.o \
	$(LOCAL_DIR)/des/ofb64enc.o \
	$(LOCAL_DIR)/des/ofb_enc.o \
	$(LOCAL_DIR)/des/pcbc_enc.o \
	$(LOCAL_DIR)/des/qud_cksm.o \
	$(LOCAL_DIR)/des/rand_key.o \
	$(LOCAL_DIR)/des/read2pwd.o \
	$(LOCAL_DIR)/des/rpc_enc.o \
	$(LOCAL_DIR)/des/set_key.o \
	$(LOCAL_DIR)/des/str2key.o \
	$(LOCAL_DIR)/des/xcbc_enc.o \
	$(LOCAL_DIR)/dh/dh_ameth.o \
	$(LOCAL_DIR)/dh/dh_asn1.o \
	$(LOCAL_DIR)/dh/dh_check.o \
	$(LOCAL_DIR)/dh/dh_depr.o \
	$(LOCAL_DIR)/dh/dh_err.o \
	$(LOCAL_DIR)/dh/dh_gen.o \
	$(LOCAL_DIR)/dh/dh_key.o \
	$(LOCAL_DIR)/dh/dh_lib.o \
	$(LOCAL_DIR)/dh/dh_pmeth.o \
	$(LOCAL_DIR)/dsa/dsa_ameth.o \
	$(LOCAL_DIR)/dsa/dsa_asn1.o \
	$(LOCAL_DIR)/dsa/dsa_depr.o \
	$(LOCAL_DIR)/dsa/dsa_err.o \
	$(LOCAL_DIR)/dsa/dsa_gen.o \
	$(LOCAL_DIR)/dsa/dsa_key.o \
	$(LOCAL_DIR)/dsa/dsa_lib.o \
	$(LOCAL_DIR)/dsa/dsa_ossl.o \
	$(LOCAL_DIR)/dsa/dsa_pmeth.o \
	$(LOCAL_DIR)/dsa/dsa_prn.o \
	$(LOCAL_DIR)/dsa/dsa_sign.o \
	$(LOCAL_DIR)/dsa/dsa_vrf.o \
	$(LOCAL_DIR)/dso/dso_dl.o \
	$(LOCAL_DIR)/dso/dso_dlfcn.o \
	$(LOCAL_DIR)/dso/dso_err.o \
	$(LOCAL_DIR)/dso/dso_lib.o \
	$(LOCAL_DIR)/dso/dso_null.o \
	$(LOCAL_DIR)/dso/dso_openssl.o \
	$(LOCAL_DIR)/dso/dso_vms.o \
	$(LOCAL_DIR)/dso/dso_win32.o \
	$(LOCAL_DIR)/ec/ec2_mult.o \
	$(LOCAL_DIR)/ec/ec2_smpl.o \
	$(LOCAL_DIR)/ec/ec_ameth.o \
	$(LOCAL_DIR)/ec/ec_asn1.o \
	$(LOCAL_DIR)/ec/ec_check.o \
	$(LOCAL_DIR)/ec/ec_curve.o \
	$(LOCAL_DIR)/ec/ec_cvt.o \
	$(LOCAL_DIR)/ec/ec_err.o \
	$(LOCAL_DIR)/ec/ec_key.o \
	$(LOCAL_DIR)/ec/ec_lib.o \
	$(LOCAL_DIR)/ec/ec_mult.o \
	$(LOCAL_DIR)/ec/ec_pmeth.o \
	$(LOCAL_DIR)/ec/ec_print.o \
	$(LOCAL_DIR)/ec/eck_prn.o \
	$(LOCAL_DIR)/ec/ecp_mont.o \
	$(LOCAL_DIR)/ec/ecp_nist.o \
	$(LOCAL_DIR)/ec/ecp_smpl.o \
	$(LOCAL_DIR)/ecdh/ech_err.o \
	$(LOCAL_DIR)/ecdh/ech_key.o \
	$(LOCAL_DIR)/ecdh/ech_lib.o \
	$(LOCAL_DIR)/ecdh/ech_ossl.o \
	$(LOCAL_DIR)/ecdsa/ecs_asn1.o \
	$(LOCAL_DIR)/ecdsa/ecs_err.o \
	$(LOCAL_DIR)/ecdsa/ecs_lib.o \
	$(LOCAL_DIR)/ecdsa/ecs_ossl.o \
	$(LOCAL_DIR)/ecdsa/ecs_sign.o \
	$(LOCAL_DIR)/ecdsa/ecs_vrf.o \
	$(LOCAL_DIR)/evp/bio_b64.o \
	$(LOCAL_DIR)/evp/bio_enc.o \
	$(LOCAL_DIR)/evp/bio_md.o \
	$(LOCAL_DIR)/evp/bio_ok.o \
	$(LOCAL_DIR)/evp/m_ecdsa.o \
	$(LOCAL_DIR)/evp/m_md4.o \
	$(LOCAL_DIR)/evp/m_md5.o \
	$(LOCAL_DIR)/hmac/hm_ameth.o \
	$(LOCAL_DIR)/hmac/hm_pmeth.o \
	$(LOCAL_DIR)/hmac/hmac.o \
	$(LOCAL_DIR)/krb5/krb5_asn.o \
	$(LOCAL_DIR)/ocsp/ocsp_asn.o \
	$(LOCAL_DIR)/ocsp/ocsp_cl.o \
	$(LOCAL_DIR)/ocsp/ocsp_err.o \
	$(LOCAL_DIR)/ocsp/ocsp_ext.o \
	$(LOCAL_DIR)/ocsp/ocsp_ht.o \
	$(LOCAL_DIR)/ocsp/ocsp_lib.o \
	$(LOCAL_DIR)/ocsp/ocsp_prn.o \
	$(LOCAL_DIR)/ocsp/ocsp_srv.o \
	$(LOCAL_DIR)/ocsp/ocsp_vfy.o \
	$(LOCAL_DIR)/pem/pem_all.o \
	$(LOCAL_DIR)/pem/pem_err.o \
	$(LOCAL_DIR)/pem/pem_info.o \
	$(LOCAL_DIR)/pem/pem_lib.o \
	$(LOCAL_DIR)/pem/pem_oth.o \
	$(LOCAL_DIR)/pem/pem_pk8.o \
	$(LOCAL_DIR)/pem/pem_pkey.o \
	$(LOCAL_DIR)/pem/pem_seal.o \
	$(LOCAL_DIR)/pem/pem_sign.o \
	$(LOCAL_DIR)/pem/pem_x509.o \
	$(LOCAL_DIR)/pem/pem_xaux.o \
	$(LOCAL_DIR)/pem/pvkfmt.o \
	$(LOCAL_DIR)/rand/rand_egd.o \
	$(LOCAL_DIR)/rand/md_rand.o \
	$(LOCAL_DIR)/rand/rand_err.o \
	$(LOCAL_DIR)/rand/rand_lib.o \
	$(LOCAL_DIR)/rand/rand_unix.o \
	$(LOCAL_DIR)/rand/randfile.o \
	$(LOCAL_DIR)/ui/ui_compat.o \
	$(LOCAL_DIR)/ui/ui_err.o \
	$(LOCAL_DIR)/ui/ui_lib.o \
	$(LOCAL_DIR)/ui/ui_openssl.o \
	$(LOCAL_DIR)/ui/ui_util.o \
	$(LOCAL_DIR)/x509/by_dir.o \
	$(LOCAL_DIR)/x509/by_file.o \
	$(LOCAL_DIR)/x509v3/v3_utl.o

Files_removed_error_during_link := \
	$(LOCAL_DIR)/rsa/rsa_oaep.o \
	$(LOCAL_DIR)/rsa/rsa_ssl.o \
	$(LOCAL_DIR)/asn1/x_sig.o \
	$(LOCAL_DIR)/bn/bn_rand.o \
	$(LOCAL_DIR)/asn1/t_pkey.o