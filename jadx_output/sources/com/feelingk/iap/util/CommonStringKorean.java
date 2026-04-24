package com.feelingk.iap.util;

import com.feelingk.iap.util.CommonString;
import com.findit.battle.GameView;

/* JADX INFO: loaded from: classes.dex */
public final class CommonStringKorean {
    private static /* synthetic */ int[] $SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index;

    static /* synthetic */ int[] $SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index() {
        int[] iArr = $SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index;
        if (iArr == null) {
            iArr = new int[CommonString.Index.valuesCustom().length];
            try {
                iArr[CommonString.Index.CANCEL.ordinal()] = 57;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[CommonString.Index.CONFIRM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[CommonString.Index.CUTURE_INQUIRY.ordinal()] = 30;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[CommonString.Index.DEVELOPMENT.ordinal()] = 54;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[CommonString.Index.DLG_AUTO_PURCHASE_DISMISS_INFO.ordinal()] = 21;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[CommonString.Index.DLG_AUTO_PURCHASE_INFO.ordinal()] = 19;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[CommonString.Index.DLG_AUTO_PURCHASE_INFO2.ordinal()] = 20;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING.ordinal()] = 22;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[CommonString.Index.DOTORI_AUTH_SMS_SEND_MESSAGE_ERROR_STRING.ordinal()] = 25;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[CommonString.Index.DOTORI_AUTH_SMS_SEND_MESSAGE_STRING.ordinal()] = 24;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[CommonString.Index.DOTORI_COUNT.ordinal()] = 27;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[CommonString.Index.DOTORI_INQUIRY.ordinal()] = 28;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[CommonString.Index.DOTORI_LIMIT_EXCESS_STRING.ordinal()] = 29;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr[CommonString.Index.DOTORI_MEMBERINFO_STRING.ordinal()] = 26;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr[CommonString.Index.DO_NOT_USE_AUTHENITACTION.ordinal()] = 51;
            } catch (NoSuchFieldError e15) {
            }
            try {
                iArr[CommonString.Index.ERROR_DLG_AUTO_PURCHASE.ordinal()] = 18;
            } catch (NoSuchFieldError e16) {
            }
            try {
                iArr[CommonString.Index.ERROR_INTERNET_ACCESS_STRING.ordinal()] = 12;
            } catch (NoSuchFieldError e17) {
            }
            try {
                iArr[CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH.ordinal()] = 14;
            } catch (NoSuchFieldError e18) {
            }
            try {
                iArr[CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING.ordinal()] = 8;
            } catch (NoSuchFieldError e19) {
            }
            try {
                iArr[CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING.ordinal()] = 9;
            } catch (NoSuchFieldError e20) {
            }
            try {
                iArr[CommonString.Index.ERROR_NONE_PARAMETER_STRING.ordinal()] = 17;
            } catch (NoSuchFieldError e21) {
            }
            try {
                iArr[CommonString.Index.ERROR_ONITEMQUERY_STRING.ordinal()] = 11;
            } catch (NoSuchFieldError e22) {
            }
            try {
                iArr[CommonString.Index.ERROR_PURCHASE_STRING.ordinal()] = 10;
            } catch (NoSuchFieldError e23) {
            }
            try {
                iArr[CommonString.Index.ERROR_SMS_NUMBER_AUTH_STRING.ordinal()] = 23;
            } catch (NoSuchFieldError e24) {
            }
            try {
                iArr[CommonString.Index.ERROR_USER_CERTI_FAIL_STRING.ordinal()] = 15;
            } catch (NoSuchFieldError e25) {
            }
            try {
                iArr[CommonString.Index.ERROR_USIM_ACTIVATE_STRING.ordinal()] = 13;
            } catch (NoSuchFieldError e26) {
            }
            try {
                iArr[CommonString.Index.FINAL_VERSION_CHECK_STRING.ordinal()] = 16;
            } catch (NoSuchFieldError e27) {
            }
            try {
                iArr[CommonString.Index.HINT_INPUT_SECURITY.ordinal()] = 50;
            } catch (NoSuchFieldError e28) {
            }
            try {
                iArr[CommonString.Index.LAST_REQUEST.ordinal()] = 53;
            } catch (NoSuchFieldError e29) {
            }
            try {
                iArr[CommonString.Index.MENT_DANAL_PAYMENTS.ordinal()] = 44;
            } catch (NoSuchFieldError e30) {
            }
            try {
                iArr[CommonString.Index.MENT_MONT_AUTO_PAYMENTS.ordinal()] = 45;
            } catch (NoSuchFieldError e31) {
            }
            try {
                iArr[CommonString.Index.MENT_NUMBER_RECLAIMED.ordinal()] = 48;
            } catch (NoSuchFieldError e32) {
            }
            try {
                iArr[CommonString.Index.MENT_NUMBER_REQUEST.ordinal()] = 49;
            } catch (NoSuchFieldError e33) {
            }
            try {
                iArr[CommonString.Index.MENT_PRIVACY_POLICY.ordinal()] = 46;
            } catch (NoSuchFieldError e34) {
            }
            try {
                iArr[CommonString.Index.MENT_REQUEST_AUTHORIZATION.ordinal()] = 47;
            } catch (NoSuchFieldError e35) {
            }
            try {
                iArr[CommonString.Index.MENT_SECURE_PAYMENTS.ordinal()] = 42;
            } catch (NoSuchFieldError e36) {
            }
            try {
                iArr[CommonString.Index.MENT_SUM_PAYMENTS.ordinal()] = 43;
            } catch (NoSuchFieldError e37) {
            }
            try {
                iArr[CommonString.Index.MONTH_AUTO_PAYMENT_INFO.ordinal()] = 41;
            } catch (NoSuchFieldError e38) {
            }
            try {
                iArr[CommonString.Index.OCB_CARD_DELETE_STRING.ordinal()] = 31;
            } catch (NoSuchFieldError e39) {
            }
            try {
                iArr[CommonString.Index.OCB_CHANGE_CARD.ordinal()] = 35;
            } catch (NoSuchFieldError e40) {
            }
            try {
                iArr[CommonString.Index.OCB_DELETE_CARD.ordinal()] = 36;
            } catch (NoSuchFieldError e41) {
            }
            try {
                iArr[CommonString.Index.OCB_INQUIRY.ordinal()] = 32;
            } catch (NoSuchFieldError e42) {
            }
            try {
                iArr[CommonString.Index.OCB_REGIST.ordinal()] = 33;
            } catch (NoSuchFieldError e43) {
            }
            try {
                iArr[CommonString.Index.OCB_REGIST_SMALL.ordinal()] = 34;
            } catch (NoSuchFieldError e44) {
            }
            try {
                iArr[CommonString.Index.RECEIVE_CODE.ordinal()] = 52;
            } catch (NoSuchFieldError e45) {
            }
            try {
                iArr[CommonString.Index.RETRY_ENTER_PASSWORD.ordinal()] = 56;
            } catch (NoSuchFieldError e46) {
            }
            try {
                iArr[CommonString.Index.T_STORE_INPUT_PASSWORD.ordinal()] = 55;
            } catch (NoSuchFieldError e47) {
            }
            try {
                iArr[CommonString.Index.USE.ordinal()] = 38;
            } catch (NoSuchFieldError e48) {
            }
            try {
                iArr[CommonString.Index.USE_CANCEL.ordinal()] = 40;
            } catch (NoSuchFieldError e49) {
            }
            try {
                iArr[CommonString.Index.USING.ordinal()] = 39;
            } catch (NoSuchFieldError e50) {
            }
            try {
                iArr[CommonString.Index.WARNING_PERMISSION.ordinal()] = 1;
            } catch (NoSuchFieldError e51) {
            }
            try {
                iArr[CommonString.Index.WON.ordinal()] = 37;
            } catch (NoSuchFieldError e52) {
            }
            try {
                iArr[CommonString.Index.WORK_AUTO_FORM_STRING.ordinal()] = 6;
            } catch (NoSuchFieldError e53) {
            }
            try {
                iArr[CommonString.Index.WORK_AUTO_PURCHASE_INFONAME.ordinal()] = 4;
            } catch (NoSuchFieldError e54) {
            }
            try {
                iArr[CommonString.Index.WORK_AUTO_PURCHASE_INFO_AGREE.ordinal()] = 5;
            } catch (NoSuchFieldError e55) {
            }
            try {
                iArr[CommonString.Index.WORK_IMEIAUTH_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError e56) {
            }
            try {
                iArr[CommonString.Index.WORK_PROCESSING_STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e57) {
            }
            $SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index = iArr;
        }
        return iArr;
    }

    public static final String getCommonString(CommonString.Index index) {
        switch ($SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index()[index.ordinal()]) {
            case 1:
                return "Permission 설정 확인";
            case 2:
                return "확인";
            case 3:
                return "처리중입니다. ";
            case 4:
                return "월별 자동결제 상품";
            case 5:
                return "월별 자동결제 상품 안내에 대해\n동의 해 주시길 바랍니다.";
            case 6:
                return "<월별 자동결제 상품 안내>\n\n월별 자동결제 상품이란,\n  상품 구매 시 1년 동안 매월 초 자동 결제 되어 편리하게 이용하실 수 있는 상품입니다.\n\n- 이용\n1. 상품 이용기간은 매월 1일 오전 00시 00분부터 매월 말일 오후 11시 59분 까지 입니다.\n2. 만료기간은 최대 1년이므로 추후 서비스를 이용하실 분께서는 재 구매하시길 바랍니다.\n3. 한 어플 당 2개 이상의 월별 자동 결제 상품 구입은 불가합니다.\n4. 공공기관 및 단체, 특수개인, 특수기관 명의의 단말은 월별 자동결제 상품 이용이 불가능 합니다.\n\n\n- 결제\n1. 월별 자동결제 상품 구입 시 즉시 결제되며 익월에 청구됩니다.\n2. 구입 첫 달은 상품 구입 시점부터 당월 말 일까지 일할 과금 및 청구되며 다음 달부터는 매월 1일에 자동 연장 및 결제가 진행됩니다.\n\n\n- 해지\n1. 중도 해지가 가능하며 다음 달 1일이 되기 전까지 해지가 가능합니다.\n2. 중도 해지 시 해당 월 말까지 이용 가능하며 추후 결제가 되지 않습니다.\n3. 중도해지 후 당월에 동일 상품을 재 구매 할 경우 가입만 처리되며 익월 1일에 정상결제 됩니다. \n\n\n- 해지 절차\n월별 자동결제 상품 해지는 T store 마이 페이지의 상품 내 구매내역이나 해당 App. 내에서 가능합니다.\n\n- 주의사항\n1. 아래와 같은 상황에서 월별 자동결제 상품이 자동 해지 될 수 있으니 참고하시길 바랍니다.\n- T store 회원 탈퇴\n- SKT 이동통신 서비스 해지\n- 번호 이동\n- 명의 변경\n- 기기변경\n-  Appl.지원 및 동일한 AID상품일 경우\n- 어플 삭제\n\n\n해당 사유에 대해서는 SK플래닛의 책임이 없음을 미리 알립니다.\n\n감사합니다.\n";
            case 7:
                return "T store 개인 정보 취급 방침\n\n- SK플래닛주식회사(이하 “회사”라 함)가 제공하는 모바일 컨텐츠 전자상거래 서비스인 T store 서비스 (이하 본 서비스라 합니다)는 고객님의 개인정보보호를 소중하게 생각하고, 고객님의 개인정보를 보호하기 위하여 항상 최선을 다해 노력하고 있습니다.\n- 본 서비스는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」을 비롯한 모든 개인정보보호 관련 법률규정을 준수하고 있습니다.\n- 본 서비스는 「개인정보 취급방침」을 제정하여 이를 준수하고 있으며, 이를 본 서비스 인터넷 홈페이지(http://tstore.co.kr 이하 “홈페이지”라 함) 첫 화면에 공개하여 고객님이 언제나 용이하게 열람할 수 있도록 하고 있습니다.\n- 본 서비스 「개인정보 취급방침」은 아래와 같은 내용을 담고 있습니다.\n\n\nㅇ 총칙\nㅇ 개인정보의 수집 항목\nㅇ 개인정보의 수집 및 이용 목적\nㅇ 개인정보의 수집에 대한 동의\nㅇ 개인정보의 수집방법\nㅇ 수집한 개인정보의 이용 및 제3자 제공\nㅇ 개인정보취급 업무의 위탁\nㅇ 개인정보의 열람 및 정정\nㅇ 개인정보의 수집, 이용,제공에 대한 동의철회\nㅇ 개인정보의 보유기간 및 이용기간\nㅇ 개인정보 파기절차 및 방법\nㅇ 개인정보 취급방침의 고지 또는 통지방법\nㅇ 개인정보보호를 위한 기술 및 관리적 대책\nㅇ 링크 사이트\nㅇ 게시물\nㅇ 개인정보 자동수집장치의 설치/ 운영 및 그 거부에 대한 사항\nㅇ 이용자의 권리와 의무\nㅇ 의견수렴 및 불만처리\nㅇ 개인정보관리 책임자 및 담당자\nㅇ 광고성 정보 전송\nㅇ 고지의무\n\n\nㅇ 총칙\n\n1. 개인정보란 생존하고 있는 개인에 관한 정보로서 성명, 주민등록번호 등에 의하여 당해 개인을 알아볼 수 있는 부호,문자,음성,음향 및 영상 등의 정보(당해 정보만으로는 특정 개인을 알아볼 수 없는 경우에도 다른 정보와 용이하게 결합하여 알아볼 수 있는 것을 포함)를 말합니다.\n2. 본 서비스는 고객정보보호를 가장 소중하게 생각하며, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』상의 개인정보 보호규정 및 방송통신위원회가 제정한 『개인정보보호지침』을 준수하고 있습니다.\n3. 본 서비스는 본 개인정보 취급방침을 통하여 고객님이 제공하는 개인정보의 수집목적 및 이용목적, 개인정보보호를 위해 취하고 있는 조치 등을 알려드립니다.\n4. 본 서비스는 본 개인정보 취급방침을 홈페이지 첫 화면에 공개함으로써 고객님께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다.\n5. 본 서비스는 개인정보 취급방침의 지속적인 개선을 위하여 개인정보 취급방침을 개정하는데 필요한 절차를 정하고 있습니다. \n6. 본 서비스의 개인정보 취급방침은 관련 법률 및 지침의 변경 또는 내부 운영 방침의 변경에 따라 변경될 수 있습니다. 개인정보 취급방침이 변경될 경우 변경된 사항을 홈페이지를 통하여 공지하여 개정된 내용을 고객님께서 쉽게 알아보실 수 있도록 하고 있습니다.\n\n\nㅇ 개인정보의 수집 항목\n\n1. 본 서비스는 기본적인 서비스 제공을 위한 정보와 고객 각각의 기호와 필요에 맞는 서비스를 제공하기 위한 선택 정보로 구분되어 다음의 정보를 수집하고 있습니다. 선택 정보를 입력하지 않은 경우에도 서비스 이용 제한은 없습니다.\n2. 본 서비스는 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않습니다.\n3. 본 서비스는 다음과 같이 개인정보를 수집하여 이용합니다.\n- 성명, 주민등록번호, 아이디, 비밀번호, E-mail: 서비스 이용에 따른 민원사항의 처리, 본인식별, 연령제한서비스 제공, 불량회원의 부정한 이용방지 등\n- 대표자명, 사업자등록번호, 사업자 연락처: 사업자 판매회원의 확인 및 서비스 제공 등\n- 휴대폰번호, 휴대폰 기종, 대기화면 및 T store 필수 프로그램 설치 정보, IMEI: T store의 서비스 제공 등\n- 휴대폰 명의 정보, 가입요금제(요금제 한도 정보, PPS여부), 번호변경/명의변경/기기변경/해지정보 등 휴대폰 관련 정보 변경 시 해당 정보, 서비스관련 과금청구정보 : T store의 서비스 제공 등(SK텔레콤 가입자에만 해당) \n- 주소, 전화번호, 이동전화번호, E-mail: 회원간 거래의 원활한 진행, 본인의사의 확인, 불만처리, 새로운 정보와 고지사항의 안내 등\n- 신용카드정보, 이동전화정보: 대금결제서비스의 제공 등\n- 주소, 전화번호, E-mail: 상품과 경품 배송 시 배송지 주소 및 연락처 확인 등\n- 생일, 직업, 취미: 고객 생일 축하 메시지 전달, 고객 관심사에 부합하는 서비스 및 이벤트 기획에 이용. 이 정보는 선택적 기입 정보로서 고객님께서 입력을 하지 않으셔도 서비스 이용 제한은 없습니다\n- IP address, 방문 일시: 불량회원의 부정 이용방지, 전자금융거래기록보관\n4. 서비스 이용과정이나 사업처리과정에서 다음과 같은 정보들이 생성되어 수집될 수 있습니다.\n- 서비스 이용기록, 요금청구 및 결제기록, 이용정지 기록, 이용해지 기록\n- 접속로그, 쿠키, 접속 IP정보\n5. 본 서비스의 이용관련 고객께서 “SK플래닛 유무선통합ID”의 사용에 동의하는 경우 통합 ID가 다음과 같이 사용되고, 관련 개인정보가 공유될 수 있습니다.\n- “SK플래닛 유무선통합ID”란, T Store 등의 서비스에 가입하신 경우 동일한 회원 정보를 사용하여 SK플래닛이 제공하는 서비스를 이용하기 쉽게 하기 위한 ID를 말합니다.\n- 아이디 및 비밀번호를 포함하여 입력하신 고객 정보(e-mail, 주소, 성별 등)는 통합 관리 및 공유되며, 회원 정보 변경 시 각 서비스에 필요한 정보들은 동시 반영[i)개인정보 제공/공유 받는 자: SK플래닛㈜, ii)개인정보를 제공/공유받는 자의 개인정보 이용목적: SK플래닛의 현재 제공중인 서비스(T스토어, 아바타 링, T클라우딩 서비스 등) 및 장래 출시 예정인 서비스에 활용, ⅲ) 제공/공유하는 개인정보의 항목: ID, 비밀번호, e-mail, 전화번호, iv) 개인정보를 제공/공유 받는 자의 개인정보 보유(공유) 및 이용기간: 유무선 통합 ID사용시까지(해당 서비스 이용시까지)]\n- 서비스 가입 시, “SK플래닛 유무선통합ID”가 생성되며, 이미 가지고 있는지 확인\n- 서비스 로그인 시, “SK플래닛 유무선통합ID”를 활용\n\nㅇ 개인정보의 수집 및 이용 목적\n\n본 서비스가 고객님의 개인정보를 수집 이용하는 목적은 다음과 같습니다.\n1.회원관리\n- 회원제 서비스 이용에 따른 본인확인, 개인식별\n- 불량회원의 부정이용 방지와 비인가 사용 방지\n- 가입의사 확인, 가입 및 가입횟수 제한\n- 미성년자의 확인\n- 고객상담, 고객불만 접수 및 처리, 분쟁조정을 위한 기록보존\n- 고지사항 전달\n2.서비스 제공에 관한 계약의 이행 및 서비스 제공에 따른 요금정산\n- 회원간의 거래 서비스 제공\n- 컨텐츠 제공, 이벤트/경품당첨 결과안내 및 상품배송\n- 구매 및 요금결제, 요금추심\n3.마케팅 및 광고에 활용\n- 고객에게 최적화된 서비스 제공\n- 신규 서비스 또는 상품 개발 및 특화\n- 인구통계학적 특성에 따른 서비스 제공 및 광고 게재\n- 웹페이지 접속 빈도 파악\n- 서비스 이용에 대한 통계\n- 정기 간행물 발송, 새로운 상품 또는 서비스 안내\n- 고객 관심사에 부합하는 웹서비스 및 이벤트 기획\n- 고객 기념일 축하 메시지 전달\n- 경품행사, 이벤트 등 광고성 정보 전달 또는 회원 참여공간 운영\n- 고객설문조사\n- 서비스 및 상품 안내\n\n\nㅇ 개인정보 수집에 대한 동의\n\n본 서비스는 고객님께서 개인정보 취급방침 또는 이용약관의 내용에 대해 「동의한다」 또는 「동의하지 않는다」 버튼을 클릭할 수 있는 절차를 마련하고 있으며, 「동의한다」 버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.\n\n\nㅇ 개인정보의 수집 방법\n\n본 서비스는 홈페이지 회원가입 절차, 상담절차, 이벤트나 경품 행사, 업무위탁사 또는 제휴사 등으로부터의 수집, 이동 전화 및 유,무선 인터넷 서비스 사용시 생성정보 수집 툴을 통한 방법(쿠키) 등으로 개인 정보를 수집합니다.\n\n\nㅇ 수집한 개인정보의 이용 및 제3자 제공\n\n1.본 서비스는 고객님의 개인정보를 가입신청서, 서비스이용약관, 「개인정보 취급방침」의「개인정보의 수집 및 이용목적」에서 고지한 범위 내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업,기관에 제공하지 않습니다. 단, 다음의 경우에는 주의를 기울여 개인정보를 이용 및 제공할 수 있습니다.\n- 제휴관계: 보다 나은 서비스 제공을 위하여 고객님의 개인정보를 제휴사에게 제공하거나 또는 제휴사와 공유할 수 있습니다. 개인정보를 제공하거나 공유할 경우에는 사전에 고객님께 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호,관리되는지에 대해 개별적으로 서면 또는 전자우편 등을 통해 고지하여 동의를 구하는 절차를 거치게 되며, 고객님께서 동의하지 않는 경우에는 제휴사에게 제공하거나 제휴사와 공유하지 않습니다. 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다.\n- 매각,인수합병 등: 영업의 전부 또는 일부를 양도하거나, 합병, 상속 등으로 서비스제공자의 권리,의무를 이전 승계하는 경우 개인정보보호 관련 고객님의 권리를 보장하기 위하여 반드시 그 사실을 고객님께 통지합니다.\n2.본 서비스의 개인정보를 개인정보 수집 시 고객님께 고지하고 동의를 얻은 범위를 넘어 이용하거나 제3자에게 제공하지 않습니다. 다만, 고객님의 동의가 있거나 다음에 해당하는 경우에는 예외로 합니다.\n- 서비스의 제공에 관한 계약의 이행을 위하여 필요한 개인정보로서 경제적, 기술적인 사유로 통상의 동의를 받는 것이 현저히 곤란한 경우 \n- 서비스 제공에 따른 요금정산을 위하여 필요한 경우 \n- 통신비밀보호법, 국세기본법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 금융실명거래 및 비밀보장에 관한 법률, 신용정보의 이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법, 소비자기본법, 한국은행법, 형사소송법 등 다른 법률에 특별한 규정이 있는 경우. 단, '법률에 특별한 규정이 있는 경우'로 행정목적이나 수사목적으로 행정관청 또는 수사기관이 요구해 온 경우라도 무조건 고객님의 개인정보를 제공하지 않으며, 법률에 규정된 바에 따라 영장 또는 기관장의 직인이 날인된 서면에 의한 경우 등 적법한 절차에 따라 제공합니다.\n- 통계작성/ 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우\n3.본 서비스 제공하는 서비스를 통해 거래가 성사된 경우 쌍방 당사자간에 상품거래와 관련한 정보를 필요한 범위 내에서 쌍방당사자에게 제공합니다.\n4.개인정보 제공 현황 \n본 개인정보 취급방침을 확인하시는 시점의 개인정보 제공 현황은 아래 링크를 통하여 확인하실 수 있습니다. 개인정보 제공 현황은 제휴관계의 개시 또는 종료에 따라 변동이 가능하며 개인정보 제공과 함께 목록에 게시되고 제휴관계 종료 등으로 인한 개인정보의 파기와 함께 목록에서 삭제됩니다.\n\n\nㅇ 개인정보 취급 업무의 위탁\n\n1.본 서비스는 기본적인 서비스 제공, 보다 나은 서비스 제공, 고객편의 제공 등 원활한 업무 수행을 위하여 다음과 같이 개인정보 취급 업무를 외부 전문업체에 위탁하여 운영하고 있습니다\n인크로스㈜: 서비스 운영 및 고객상담업무 위탁운영\n시스템 구축 및 유지보수\nT store 어플리케이션 내 광고 플랫폼 제공\n리얼네트웍스아시아퍼시픽㈜: 폰꾸미기 서비스 시스템 운영\n유지보수\n고객상담업무 위탁 운영\n한국신용정보(주): 실명/본인인증\n㈜다날: 휴대폰 소액 결제\n이니시스: 신용카드 결제\nSK Communications.: T store 검색 개발/운영\n2.본 서비스는 위탁업무계약서 등을 통하여 개인정보보호 관련 법규의 준수, 개인정보에 관한 비밀유지, 제3자 제공에 대한 금지, 사고시의 책임 부담, 위탁기간, 처리 종료 후의 개인정보의 반환 또는 파기의무 등을 규정하고, 이를 준수하도록 관리하고 있습니다\n\n\nㅇ 개인정보의 열람 및 정정\n\n1.고객님은 언제든지 등록되어 있는 고객님의 개인정보를 열람하거나 정정하실 수 있습니다. 개인정보 열람 및 정정을 하고자 할 경우에는 『회원정보변경』을 클릭하여 직접 열람 또는 정정하거나, 개인정보관리책임자 및 담당자에게 서면, 전화 또는 E-mail로 연락하시면 지체없이 조치하겠습니다.\n2.고객님께서 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인 정보를 이용 또는 제공하지 않습니다.\n3.잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정하도록 조치하겠습니다.\n\n\nㅇ 개인정보의 수집, 이용,제공에 대한 동의 철회\n\n1.회원가입 등을 통해 개인정보의 수집, 이용,제공에 대해 고객님께서 동의하신 내용을 고객님께서는 언제든지 철회하실 수 있습니다. 동의 철회는 홈페이지 첫 화면의 『정보변경』에서 \"회원탈퇴\"를 클릭하거나 개인정보관리책임자에게 서면, 전화, E-mail등으로 연락하시면 지체없이 회원탈퇴를 위해 필요한 조치를 취합니다. 동의 철회를 하고 개인정보를 파기하는 등의 조치를 취한 경우에는 그 사실을 고객님께 지체없이 통지하도록 하겠습니다.\n2.본 서비스는 개인정보의 수집에 대한 동의철회(회원탈퇴)를 개인정보를 수집하는 방법보다 쉽게 할 수 있도록 필요한 조치를 취합니다.\n\n\nㅇ 개인정보의 보유 및 이용기간\n\n1.고객님의 개인정보는 본 서비스 고객님께 서비스를 제공하는 기간 동안에 보유 및 이용되고, 회원 탈퇴 시 수집된 개인의 정보가 열람 또는 이용될 수 없도록 파기 처리됩니다. 다만, 관계법령의 규정에 의하여 보존할 필요성이 있는 경우에는 관계법령에 따라 보존합니다.\n2.상법 및 ‘전자상거래등에서 소비자보호에 관한 법률’, 전자금융거래법, 여신전문금융업법 국세기본법, 법인세법, 부가가치세법 등 관련 법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인을 위하여 일정기간 보유하여야 할 필요가 있을 경우 개인정보는 일정기간 보유되며, 이 때 보유되는 개인정보의 열람 및 이용은 해당 사유로 국한되며, 사전에 보유목적, 기간 및 보유하는 개인정보 항목을 명시하여야 합니다.\n- 고객님께 미리 고지하고 그 보유기간이 경과하지 아니한 경우와 개별적으로 고객님의 동의를 받은 경우에는 약속한 보유기간\n- 계약 또는 청약철회 등에 관한 기록: 5년\n- 대금결제 및 재화 등의 공급에 관한 기록: 5년\n- 소비자의 불만 또는 분쟁처리에 관한 기록: 3년\n3.고객님의 동의를 받아 보유하고 있는 거래정보에 대해 고객님께서 열람을 요구하는 경우에는 지체없이 해당 정보를 열람/ 확인할 수 있도록 조치합니다.\n4.회원이 자발적으로 회원 탈퇴한 경우 회원 재가입, 임의 해지 등을 반복적으로 행함으로써 본 서비스가 제공하는 할인쿠폰, 이벤트 혜택 등의 경제상의 이익을 불법 편법적으로 수취하거나 이 과정에서 명의도용 등의 행위가 발생하는 것을 방지하기 위한 목적으로 회원 탈퇴 후 1개월 동안 회원의 성명, 주민등록번호, 아이디, 비밀번호, E-mail 식별정보를 보관합니다.\n\n\nㅇ 개인정보 파기 절차 및 방법\n\n본 서비스는 수집한 개인정보의 이용목적이 달성된 후에는 보관기간 및 이용기간에 따라 해당 정보를 지체없이 파기합니다. 파기절차, 방법, 시점은 다음과 같습니다.\n- 파기절차 및 시점: 고객님이 서비스 가입 등을 위해 기재한 개인정보는 서비스 해지 등 이용목적이 달성된 후 내부 방침 및 기타 관련 법령에 의한 정보보호 사유(위 개인정보의 보유 및 이용기간 참조)에 따른 보유기간이 경과한 후에 삭제되거나 파기합니다. 일반적으로 잔존하는 채권,채무 관계가 없는 경우 본 서비스 회원가입 시 수집되어 전자적 파일형태로 관리하는 개인정보는 회원 탈퇴 시점에 바로 삭제 됩니다. \n- 파기방법: 종이에 출력된 개인정보는 분쇄기로 분쇄 또는 소각하거나 화학약품 처리를 하여 용해하여 파기하고, 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.\n\n\nㅇ 개인정보 취급방침의 고지 또는 통지방법\n\n1.본 서비스는 고객님이 동의한 범위를 넘어 고객님의 개인정보를 이용하거나 제3자에게 제공하기 위해 고객님의 추가적인 동의를 얻고자 하는 때에는 미리 고객님께 개별적으로 서면, 전자우편, 전화 등으로 해당사항을 고지합니다.\n2.타인에게 고객님의 개인정보의 수집,보관,처리,이용,제공,관리,파기 등을 위탁하는 경우에는 가입화면, 서비스이용약관, 홈페이지의 개인정보 취급방침 등을 통하여 그 사실을 고객님께 고지하고 동의를 얻습니다.\n3.본 서비스가 영업의 전부 또는 일부를 양도하거나 합병, 상속 등으로 그 권리,의무를 이전하는 경우 서면,전자우편 등을 통하여 고객님께 개별적으로 통지함과 동시에 홈페이지 첫 화면에서 식별할 수 있도록 표기하여 30일 이상 그 사실을 공지합니다. 다만, 서면,전자우편 기타의 방법에 의한 통지는 과실 없이 고객님의 연락처를 알지 못하거나 천재, 지변 기타 통지할 수 없는 정당한 이유가 있는 경우에는 2곳 이상의 중앙일간지(고객님의 대부분이 특정 지역에 거주하는 경우에는 그 지역을 보급구역으로 하는 일간지로 할 수 있습니다)에 1회 이상 공고하는 것으로 갈음합니다.\n\n\nㅇ 개인정보보호를 위한 기술 및 관리적 대책\n\n본 서비스에서는 고객님의 개인정보를 보호하기 위해 기술적 대책과 관리적 대책을 마련하고 있으며, 이를 적용하고 있습니다.\n1.기술적 대책\n본 서비스는 고객님의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.\n①고객님의 개인정보는 비밀번호에 의해 보호되며 파일 및 전송데이터를 암호화하거나 파일 잠금기능 (Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.\n②본 서비스는 백신프로그램을 이용하여 컴퓨터 바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 지체없이 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다.\n③본 서비스는 암호알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL 또는 SET)를 채택하고 있습니다.\n④해킹 등 외부침입에 대비하여 각 서버마다 침입차단시스템 및 취약점 분석시스템 등을 이용하여 보안에 만전을 기하고 있습니다.\n2.관리적 대책\n①본 서비스는 고객님의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다. 그 최소한의 인원에 해당하는 자는 다음과 같습니다. \n- 이용자를 직접 상대로 하여 마케팅 업무를 수행하는 자\n- 개인정보관리책임자 및 담당자 등 개인정보관리업무를 수행하는 자\n- 기타 업무상 개인정보의 취급이 불가피한 자\n②본 서비스는 고객님의 개인정보에 대한 접근 및 관리에 필요한 절차 등을 마련하여 소속 직원으로 하여금 이를 숙지하고 준수하도록 하고 있으며, 개인정보를 취급하는 직원을 대상으로 새로운 보안 기술 습득 및 개인정보보호 의무 등에 관해 정기적인 사내 교육 및 외부 위탁교육을 실시하고 있습니다.\n③개인정보 관련 취급자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확히 하고 있습니다.\n④전산실 및 자료 보관실 등을 특별 보호구역으로 설정하여 출입을 통제하고 있습니다.\n⑤본 서비스는 컴퓨터를 이용하여 고객님의 개인정보를 처리하는 경우 개인정보에 대한 접근권한을 가진 담당자를 지정하여 식별부호(ID) 및 비밀번호를 부여하고, 해당 비밀번호를 정기적으로 갱신하고 있습니다.\n⑥본 서비스는 신규직원 채용 시 정보보호서약서 또는 개인정보보호서약서에 서명함으로 직원에 의한 정보유출을 사전에 방지하고 개인정보 취급방침에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하여 지속적으로 시행하고 있습니다.\n⑦본 서비스는 직원 퇴직 시 비밀유지서약서에 서명함으로 회원의 개인정보를 취급하였던 자가 직무상 알게 된 개인정보를 훼손/ 침해 또는 누설하지 않도록 하고 있습니다.\n⑧서비스이용계약체결 또는 서비스제공을 위하여 고객님의 신용카드번호, 은행결제계좌 등 대금결제에 관한 정보를 수집하거나 고객님께 제공하는 경우 당해 고객님이 본인임을 확인하기 위하여 필요한 조치를 취하고 있습니다.\n⑨본 서비스는 고객님 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 회원의 경우 개개인이 본인의 개인정보를 보호하기 위해서 자신의 ID 와 패스워드를 적절하게 관리하고 여기에 대한 책임을 져야 합니다.\n⑩공동으로 사용하는 PC에서 저희 홈페이지를 접속하여 로그인 한 상태에서 다른 사이트로 이동하는 경우, 서비스 이용을 종료하는 경우에는 반드시 로그아웃 처리 후 해당 홈페이지를 종료하시기 바랍니다. 그렇지 않을 경우, 해당 브라우저를 통해 ID, 비밀번호 등 고객님의 정보가 타인에게 쉽게 유출될 위험이 있습니다.\n⑪그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 본 서비스는 지체없이 고객님께 사실을 알리고 적절한 대책과 보상을 강구할 것입니다. \n\n\n\nㅇ 링크사이트\n\n1.본 서비스는 회원에게 다른 회사의 사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 서비스는 외부사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 진실성, 유용성 등에 대해 책임지지 않으며, 어떠한 보증도 하지 않습니다.\n2.본 서비스가 포함하고 있는 링크를 클릭(click)하여 타 사이트(site)의 페이지로 옮겨갈 경우 해당 사이트의 개인정보 취급방침은 본 서비스와 무관하므로 새로 방문한 사이트의 정책을 반드시 검토해 보시기 바랍니다.\n\n\nㅇ 게시물\n\n1.게시물에 관련된 제반 권리와 책임은 작성자 개인에게 있습니다. 또한 게시물을 통해 자발적으로 공개된 정보는 보호받기 어려우므로 정보 공개 전에 심사숙고한 후 서비스를 이용하여야 합니다.\n2.본 서비스는 고객님의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 명시적 또는 개별적인 경고 후 삭제 또는 수정 조치할 수 있습니다.\n- 스팸(spam)성 게시물 (예: 행운의 편지, 특정사이트에 대한 광고, 타 사이트로의 유도 광고 및 링크 등)\n- 타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 게시물\n- 동의 없는 타인의 신상공개, 본 서비스의 저작권, 제3자의 지적재산권 등 권리를 침해하는 내용, 기타 게시판 주제와 다른 내용의 게시물\n- 기타 본 서비스 이용약관 또는 각종 지침, 운영원칙에 반하는 게시물\n3.다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.\n\n\nㅇ 개인정보 자동수집장치의 설치,운영 및 그 거부에 대한 사항\n\n1.본 서비스를 통하여 고객님의 정보를 저장하고 수시로 찾아내는 쿠키(cookie)를 설치/ 운용할 경우도 있습니다. 쿠키란 웹 서버가 웹 브라우저에 보내어 저장했다가 서버의 부가적인 요청이 있을 때 다시 서버로 보내주는 문자열 정보를 말합니다. 고객이 홈페이지에 접속을 하면 고객의 브라우저에 있는 쿠키의 내용을 읽고, 추가정보를 찾아 접속에 따른 성명 등의 추가 입력 없이 서비스를 제공할 수 있습니다. 본 서비스의 쿠키를 통해 수집하는 정보는 회원의 아이디(ID)에 한하며, 그 외의 다른 정보는 수집하지 않습니다. 본 서비스의 쿠키(cookie)를 통해 수집한 회원의 아이디(ID)는 개인의 관심 분야에 따라 차별화된 정보를 제공회원과 비회원의 접속빈도 또는 머문 시간 등을 분석하여 이용자의 취향과 관심분야를 파악하여 타겟(target)마케팅에 활용관심 있게 둘러본 내용들에 대한 자취를 추적하여 다음 번 접속 때 개인맞춤서비스를 제공유료서비스 이용 시 이용기간 안내회원들의 습관을 분석하여 서비스 개편 등의 척도로 활용하기 위해 사용될 수 있습니다.\n2.고객은 쿠키 설치에 대한 선택권을 가지고 있습니다. 웹 브라우저 상단의 “도구 > 인터넷옵션 > 개인정보 > 고급”에서 모든 쿠키를 다 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. 단, 고객이 쿠키 설치를 거부하였을 경우 서비스 이용에 불편이 있거나, 서비스 제공에 어려움이 있을 수 있습니다.\n3.쿠키는 브라우저의 종료 시나 로그 아웃 시 만료됩니다.\n\n\nㅇ 이용자의 권리와 의무\n\n1.본 서비스는 고객님의 의견을 매우 소중하게 생각하며, 고객님은 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니\n2.고객님의 개인정보를 최신의 상태로 정확하게 입력하여 불의의 사고를 예방해 주시기 바랍니다. 입력한 부정확한 정보로 인해 발생하는 사고의 책임은 고객님께 있으며 타인 정보의 도용 등 허위정보를 입력할 경우 회원자격이 상실될 수 있습니다.\n3.의무도 가지고 있습니다. 패스워드를 포함한 고객님의 개인정보가 유출되지 않도록 조심하시고 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해 주십시오. 만약 이 같은 책임을 다하지 못하고 타인의 정보를 훼손할 시에는『정보통신망 이용촉진 및 정보보호 등에 관한 법률』등에 의해 처벌받을 수 있습니다.\n\n\nㅇ 의견수렴 및 불만 처리\n\n1.본 서비스는 고객님과의 원활한 의사소통을 위해 고객센터 등 고객상담창구를 운영하고 있으며 고객님께서 문의사항이 있을 경우 아래의 연락처로 문의하시면 언제든 성실한 답변을 받으실 수 있습니다.\n①개인정보 관련 고객센터\n- 개인정보처리담당자 : cscenter@tstore.co.kr\n- 전화번호 : 이동전화 114(무료), (국번없이) 1599-0011(유료)\n②사이버상담: 본 서비스에 접속하신 후 고객센터 메뉴의 Q&A 코너상담/안내에서 사이버 상담원에게 질문을 하실 수 있습니다. \n\n2.E-mail이나 팩스 및 우편을 이용한 상담은 접수 후 24시간 이내에 답변이 될 수 있도록 노력하겠습니다.\n3.기타 개인정보 침해에 관한 상담이 필요한 경우에는 한국정보보호진흥원 개인정보침해신고센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다. \n①개인정보침해신고센터\n- 전화: 1336\n- URL: http://www.cyberprivacy.or.kr \n②경찰청 사이버테러대응센터\n- 전화: 02 - 3939 - 112\n- URL: http://www.netan.go.kr \n\n\n\nㅇ 개인정보관리 책임자 및 담당자\n\n1.본 서비스는 고객님의 개인정보보호를 매우 소중하게 생각하며, 고객님의 개인정보가 훼손, 침해 또는 누설되지 않도록 최선을 다하고 있습니다. 그러나 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다.\n2.고객님의 개인정보보호 관련 문의 시 고객센터에서 신속하고 성실하게 답변을 드리도록 하고 있습니다. 또한 고객님이 본 서비스의 개인정보보호 담당자와 연락을 원하실 경우 아래의 연락처 또는 E-mail로 연락을 주시면 개인정보 관련 문의사항에 대하여 신속하고 성실하게 답변해 드리겠습니다.\n- 개인정보관리 책임자 : 이진우 대외협력실장\n- 개인정보관리담당자 : 이상익 매니저\n- 소속부서 : SK플래닛 대외협력실 BR&C팀\n- 전화번호 : 이동전화 114(무료), (국번없이)1599-0011(유료)\n- 이메일 : privacy.skp@skplanet.co.kr\n\n\n\nㅇ 광고성 정보 전송\n\n본 서비스는 고객님의 명시적인 수신거부 의사에 반하여 영리목적의 광고성 정보를 전송하지 않습니다\n\n\nㅇ 고지의무\n\n현 개인정보 취급방침은 2009년 6월 30일에 제정되었으며 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 경우에는 개정 최소 7일 전부터 홈페이지의 '공지'란을 통해 고지할 것다.\n\n부칙\n(시행일) 본 약관은 2011년 10월 1일부터 시행합니다.\n";
            case 8:
                return "네트워크 연결을 확인 해주시기 바랍니다.";
            case 9:
                return "네트워크 전송중 에러입니다.";
            case 10:
                return "과금 오류";
            case 11:
                return "[과금 오류]\n콜백 리스너 onItemQueryComplete()의 리턴값이 false이거나 null입니다. true로 리턴되어야 합니다.";
            case 12:
                return "네트워크가 연결되어 있지 않습니다.";
            case 13:
                return "USIM 상태를 확인 해주시기 바랍니다.";
            case 14:
                return "주민번호를 다시 확인해 주세요.";
            case 15:
                return "고객님은 본 유료 컨텐츠 이용 시\nT store 회원가입이 필요합니다.진행 하시겠습니까?";
            case GameView.GameRoom.MTIME_GAME_16 /* 16 */:
                return "현재 고객님은 본 컨텐츠의 체험판을 이용 중입니다.정식판으로 전환 하시겠습니까?";
            case GameView.GameRoom.MTIME_GAME_17 /* 17 */:
                return "정의되지 않는  에러입니다.";
            case GameView.GameRoom.MTIME_GAME_18 /* 18 */:
                return "본 상품은 월별 자동결제상품으로 SKT 고객님만 이용 가능합니다.";
            case 19:
                return "상품을 중도 해지 하시겠습니까?";
            case 20:
                return "\n\n** 주의사항 **\n중도 해지를 하시더라도 당월 말까지는 서비스를 이용하실 수 있습니다. 이 후 계속 사용을 원하실 경우 익월에 재신청이 가능합니다.";
            case 21:
                return "본 상품에 대한 해지가\n정상적으로 처리되었으며\n당월 말까지 이용 가능함을알려드립니다.\n\n이용해 주셔서 감사합니다.";
            case 22:
                return "해당 서비스는 T store 설치 후 이용해 주시길 바랍니다. 감사합니다.";
            case 23:
                return "잠시만 기다려 주세요.\n인증번호 재전송은 발송 후 3분 뒤에 재전송 할 수 있습니다.\n\n";
            case 24:
                return "인증번호 발송을 요청하였습니다.";
            case GameView.Result.ADTEXT_SIZE /* 25 */:
                return "인증번호 발송을 요청하였습니다. 잠시만 기다려주세요.";
            case 26:
                return "회원님은 네이트/싸이월드\n연동회원이 아니십니다.\n네이트/싸이월드 연동회원으로\n전환하시면 도토리를 사용하실 수\n있습니다.";
            case 27:
                return "개";
            case 28:
                return "도토리조회";
            case 29:
                return "상품 구매 시 사용하실 수 있는\n도토리는 최대 1,000개입니다.\n다른 할인 수단을 이용해주세요.\n";
            case 30:
                return "조회하기";
            case 31:
                return "OK Cashbag 카드 정보를\n삭제하시겠습니까?";
            case 32:
                return "포인트조회";
            case 33:
                return "OK캐쉬백등록";
            case 34:
                return "OK캐쉬백등록";
            case 35:
                return "카드변경";
            case 36:
                return "카드삭제";
            case 37:
                return "원";
            case 38:
                return "사용하기";
            case 39:
                return "사용";
            case GameView.GameRoom.GAMETIME /* 40 */:
                return "사용취소";
            case 41:
                return "월별 자동결제 상품 안내";
            case 42:
                return "* 상품 결제 시 잠금 설정을 하시면 보다 안전한 결제를 하실 수 있습니다.";
            case 43:
                return "*결제하신 금액은 휴대폰 요금 고지서에 합산 청구됩니다.(후불결제 내역 존재 시)";
            case 44:
                return "*결제하신 금액은 ㈜다날 휴대폰결제로 요금고지서에 합산 청구됩니다. (후불결제 내역 존재 시)";
            case 45:
                return "월별자동결제 상품";
            case 46:
                return "개인정보 취급방침 변경 안내";
            case 47:
                return "인증번호를 요청해주세요";
            case 48:
                return "인증번호 재요청";
            case 49:
                return "인증번호요청";
            case 50:
                return "인증번호를 입력해주세요.";
            case 51:
                return "구매 시 인증 서비스를 이용하지 않겠습니다";
            case 52:
                return "인증번호 요청";
            case 53:
                return "요청시간";
            case 54:
                return "개발";
            case 55:
                return "T store 잠금설정 비밀번호를\n입력 해주시길 바랍니다.";
            case 56:
                return "다시 한번 비밀번호를 입력해주세요.";
            case 57:
                return "취소";
            default:
                return GameView.CHARACTER_AI;
        }
    }
}
