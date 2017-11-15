package com.snowstone.snow.web.util;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PoseidonConstants {
	public static final String ANONYMOUS_USER = "anonymousUser";

	/**
	 * 融资管理费率
	 */
	public static final String FIN_MNG_RATE = "finMngRate";

	/**
	 * 融资交易费率
	 */
	public static final String FIN_TRADE_RATE = "finTradeRate";

	/**
	 * 销售佣金系数
	 */
	public static final String SALE_COMM_FACTOR = "saleCommFactor";

	/**
	 * 系统帐户
	 */
	public static final long SYSTEM_ID = 10L;

	/**
	 * 站内信
	 */
	public static final String STATION_MAIL = "00390001";
	/**
	 * 短信
	 */
	public static final String SMS = "00390002";

	/**
	 * 手工验证码
	 */
	public static final String VERIFICATION_CODE = "00421000";
	/**
	 * 手工站内信
	 */
	public static final String MANUAL_STATION_MAIL = "00421001";

	/**
	 * 募资截止日处理
	 */
	public static final String AUDITED_TO_FUNDRAISING = "00450001";
	/**
	 * 约定交割日处理
	 */
	public static final String AGREED_DELIVERY_DAY_DEAL = "00450002";
	/**
	 * 平台批量签章
	 */
	public static final String BATCH_PLATFORM_SIGN = "00450004";
	/**
	 * 担保公司批量签章
	 */
	public static final String BATCH_PLUG_SEAL = "00450008";
	/**
	 * 创建汇总版协议
	 */
	public static final String CREATE_TOTAL_LOAN = "00450011";
	/**
	 * 出让人批量签章(债权转让协议&汇总协议)
	 */
	public static final String BATCH_LOADER_SIGN = "00450009";

	/**
	 * 债权到期日处理 - 修改资产状态为已到期
	 */
	public static final String ASSET_CREDIT_END_DATE_DEAL = "00450003";

	/**
	 * 预订单到期释放
	 */
	public static final String APPOINTMENT_TIMEOUT = "00450004";

	/**
	 * 开发者证书到期失效
	 */
	public static final String DEVELOPER_CERTIFICATE_FAIL = "00450005";

	/**
	 * 批量结算
	 */
	public static final String BATCH_SETTLEMENT = "00450006";

	/**
	 * 检查重复扣款
	 */
	public static final String BATCH_REDEBITED = "00450007";

	/**
	 * 
	 * 理财产品募资开始时间到，理财产品状态由等待募资改为募资中
	 */

	public static final String FINANCE_PRODUCT_FUNDRAISING = "00450012";

	/**
	 * 
	 * 理财产品变为募资完成
	 */

	public static final String FINANCE_PRODUCT_RAISE_SUCCEED = "00450001";

	/**
	 * 
	 * 获取CRL文件
	 */

	public static final String GET_CRL = "00450010";

	/**
	 * 匿名帐户
	 */
	public static final long ANONYMOUS_ID = 11L;

	// 站内信
	public static final String MESSAGE_TYPE_00390001 = "00390001";
	// 短信
	public static final String MESSAGE_TYPE_00390002 = "00390002";
	// 邮件
	public static final String MESSAGE_TYPE_00390003 = "00390003";

	public static final Map<String, String> MESSAGE_TYPE = new HashMap<String, String>();

	static {
		MESSAGE_TYPE.put(MESSAGE_TYPE_00390001, "imsHandler");
		MESSAGE_TYPE.put(MESSAGE_TYPE_00390002, "smsHandler");
		MESSAGE_TYPE.put(MESSAGE_TYPE_00390003, "mailHandler");
	}

	public static final Map<Boolean, String> AUTO_FLAG = new HashMap<Boolean, String>();

	static {
		AUTO_FLAG.put(Boolean.TRUE, "autoMessageCreater");
		AUTO_FLAG.put(Boolean.FALSE, "manualMessageCreater");

	}

	/**
	 * 年月日
	 */
	public static DateFormat df = new SimpleDateFormat("yyyy年MM月dd日");
	/**
	 * 年月日时分
	 */
	public static DateFormat df1 = new SimpleDateFormat("yyyy年MM月dd日 HH点mm分");

	/**
	 * 年月日时分秒
	 */
	public static DateFormat df2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	/**
	 * 年-月-日
	 */
	public static DateFormat df3 = new SimpleDateFormat("yyyy-MM-dd");
	/**
	 * 年月日
	 */
	public static DateFormat df4 = new SimpleDateFormat("yyyyMMdd");

	/**
	 * 年月日时分秒(yyyyMMddHHmmss)
	 */
	public static DateFormat df5 = new SimpleDateFormat("yyyyMMddHHmmss");

	/**
	 * 金额123,123.23
	 */
	public static DecimalFormat dfmt = new DecimalFormat("#,###.##");

	/**
	 * 金额23123.00
	 */
	public static DecimalFormat dfmt1 = new DecimalFormat("##.00");

	/**
	 * pdf的fileType为order
	 */
	public static final String PDF_FILE_TYPE_ORDER = "order";
	/**
	 * pdf的fileType为childAsset
	 */
	public static final String PDF_FILE_TYPE_CHILDASSET = "childAsset";

	/**
	 * pdf的fileType为member
	 */
	public static final String PDF_FILE_TYPE_MEMBER = "member";

	// 手续费
	public static final String CHECKOUT_TYPE_PROCEDURE = "手续费";
	// 管理费
	public static final String CHECKOUT_TYPE_MANAGEMENT = "管理费";
	// 普通结算
	public static final String CHECKOUT_TYPE_COMMON = "普通结算";

	/**
	 * 代收类型 - 资产回购
	 */
	public static final String PAYMENT_TYPE_BUYBACK = "资产回购";
	/** 代收类型- 订单付款 */
	public static final String PAYMENT_TYPE_ORDERPAYMENT = "订单付款";

	/** 账户类型-个人 */
	public static final String ACCOUNT_CODE_PERSON = "10040001";

	/** 账户类型-企业 */
	public static final String ACCOUNT_CODE_ENTERPRISE = "10040002";

	/** 客户类型-个人 */
	public static final String CUSTOMER_TYPE_PERSON = "个人";

	/** 客户类型-企业 */
	public static final String CUSTOMER_TYPE_ENTERPRISE = "企业";
	/** 客户证件类型 */
	public static final String CUSTOMER_CERTI_TYPE = "00230007";

	/** TPP付款 -返回代码 **/
	// 成功
	public static final String RESPONSE_CODE_SUCCESS = "000000";
	// 异常
	public static final String RESPONSE_CODE_EXCEPTION = "100001";
	// 处理中
	public static final String RESPONSE_CODE_DEALING = "100002";
	// 超时
	public static final String RESPONSE_CODE_TIME_OUT = "100003";
	// 失败
	public static final String RESPONSE_CODE_FAIL = "100004";
	// 部分成功、部分失败
	public static final String RESPONSE_CODE_PART = "100013";
	// 发送的数据不规范，被拒
	public static final String RESPONSE_CODE_UNDO = "999999";

	/** 调用TPP时，记录日志状态 */
	public static final String TPP_TYPE_SEND = "已发送";
	public static final String TPP_TYPE_RECEVIE = "已响应";

	/** 理财产品 期限类型（月，日） */
	public static final String FINANCEPRODUCT_TIMETYPE_MONTH = "月";
	public static final String FINANCEPRODUCT_TIMETYPE_DAY = "天";

	/** 理财产品 期限类型（M，D） */
	public static final String E_FINANCEPRODUCT_TIMETYPE_MONTH = "M";
	public static final String E_FINANCEPRODUCT_TIMETYPE_DAY = "D";

	/* 协议文件头 品牌合作协议 */
	public static final String BRAND_JOIN_AGREE = "品牌合作协议";
	/* 协议文件尾巴 品牌合作协议补充协议 */
	public static final String FLAG_APPEND_AGREE = "补充协议";
	/* 协议文件头 品牌合作协议补充协议 */
	public static final String BRAND_APPEND_AGREE = "品牌合作协议补充协议";
	/* 协议文件头 债权转让及回购协议 */
	public static final String LOAN_ASSIGN_AGREE = "债权转让及回购协议";

	/* 协议文件头 债权转让协议补充协议 */
	public static final String PAYMENT_AGREE = "支付协议 ";
	/* 协议文件头 债担保承诺函 */
	public static final String GUARANTEE_PROMISE_NOTE = "担保承诺函";

	public static final String LOAN_TOTAL = "债权转让及回购协议-汇总版";
	/* 签章规则 平台签章处 */
	public static final String PLATFORM_RULE = "1";
	/* 签章规则 担保公司签章处 */
	public static final String GUARANTEE_RULE = "2";
	/* 签章规则 出让人（伯原）签章处 */
	public static final String TRANSFEROR_RULE_3 = "3";
	/* 签章规则 出让人（东虹桥）签章处 */
	public static final String TRANSFEROR_RULE_4 = "4";

	// 营业执照副本复印件;
	public static final String IMG_TYPE_BUSINESS_LICENCE = "businessLicence";
	// 组织代码证副本复印件;
	public static final String IMG_TYPE_ORGANIZATION_CODE = "organizationCode";
	// 税务证副本复印件;
	public static final String IMG_TYPE_TAXCERTIFICATE = "taxCertificate";
	// 电子签章
	public static final String IMG_TYPE_ELECTRONIC_SIGNATURE = "electronicSignature";
	// 申请人企业授权书
	public static final String IMG_TYPE_BUSINESS_AUTHORIZATION = "businessAuthorization";

	// TPP支付接口
	public static final String TPP_PAYMENT = "01000001";
	// 第三方支付代码
	public static final String THIRD_PARTY_TYPE = "10010001";
	// 与TPP交互系统码
	public static final String REQUEST_OPRATOR = "100779";
	// 子资产付款完成时，发送短信给资产方
	public static final String CHILDASSET_PAY_MESSAGE = "00420012";
	// 子资产完成回购的时候，发短信给资产方
	public static final String CHILDASSET_BUYBACK_MESSAGE = "00420021";
	// 产品变更状态时，发送短信给资金方
	public static final String MESSAGE_00420010 = "00420010";
	// 生成订单编号的sequence名称
	public static final String ORDER_CODE_SEQUENCE = "SEQ_ORDER_CODE";

	// 付款方式 - 第三方支付
	public static final String PAYMENT_MODE_THRIDPP = "第三方支付";
	// 付款方式 - 线下付款
	public static final String PAYMENT_MODE_BANKTRANSFER = "银行汇款";

	public static final Map<String, String> ASSET_TYPE_CODE = new HashMap<String, String>();
	public static final Map<String, List<String>> ASSET_RISK_CODE = new HashMap<String, List<String>>();
	static {
		// 资产类型类型映射
		ASSET_TYPE_CODE.put("00300002", "01");
		ASSET_TYPE_CODE.put("00300001", "02");

		// 风险设置
		List<String> risk_a = new ArrayList<String>();
		risk_a.add("00320001");
		risk_a.add("00320002");
		risk_a.add("00320003");
		List<String> risk_b = new ArrayList<String>();
		risk_b.add("00320004");
		risk_b.add("00320005");
		risk_b.add("00320006");
		List<String> risk_c = new ArrayList<String>();
		risk_c.add("00320007");
		risk_c.add("00320008");
		risk_c.add("00320009");

		ASSET_RISK_CODE.put("00320001", risk_a);
		ASSET_RISK_CODE.put("00320002", risk_a);
		ASSET_RISK_CODE.put("00320003", risk_a);

		ASSET_RISK_CODE.put("00320004", risk_b);
		ASSET_RISK_CODE.put("00320005", risk_b);
		ASSET_RISK_CODE.put("00320006", risk_b);

		ASSET_RISK_CODE.put("00320007", risk_c);
		ASSET_RISK_CODE.put("00320008", risk_c);
		ASSET_RISK_CODE.put("00320009", risk_c);
	}

	// 待回购提醒
	public static final String REMIND_BUY_BACK_DAY = "00450013";
	// 字典表证件类型
	public static final String DICTIONARY_TYPE_CERTIFICATE = "0023";

	/**
	 * 业务模式：普通模式
	 */
	public static final String DEFAULT_BUSINESS_MODE = "00470001";

	/**
	 * 业务模式:赊销模式
	 */
	public static final String CREDIT_BUSINESS_NODE = "00470002";

	/**
	 * 担保函前缀
	 */
	public static final String GU_SN_PREFIX = "YLDHQ";

	public final static String PROC_BUILD_GU_SN = "PROC_BUILD_GU_SN";

	public static final Map<String, String> MAP_GU_SN_PREFIX = new HashMap<String, String>();
	static {
		MAP_GU_SN_PREFIX.put(GU_SN_PREFIX, "YLDHQ");
	}
}
