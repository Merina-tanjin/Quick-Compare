<?php
class CompareModel extends CI_Model
{
    public function getCountryList()
    {
        $this->db->from("tbl_countries");
        $this->db->order_by("country", "ASC");
        $result = $this->db->get()->result();
        return $result;
    }

    public function getWebsiteListByCountry($country_id, $type)
    {
        $this->db->select("tbl_websites.*, tbl_countries.country");
        $this->db->from("tbl_websites");
        $this->db->join("tbl_countries", "tbl_websites.country_id = tbl_countries.id");
        $this->db->order_by("website_name", "ASC");
        $this->db->where("country_id", $country_id);
        if (isset($type)) {
            $this->db->where("type", $type);
        }
        $result = $this->db->get()->result();
        return $result;
    }

    public function privacyCalculation($website_ids)
    {
        $this->db->select("tbl_countries.country, tbl_websites.id, website_name, website_URL, password_authentication_on_guidelines_f1 AS f1, password_recovery_f2 AS f2, captcha_f3 AS f3, security_question_f4 AS f4, HTTPS_channels_f5 AS f5, password_strength_meter_f6 AS f6, privacy_third_party_f7 AS f7, privacy_policy_law_f8 AS f8");
        $this->db->from("tbl_websites");
        $this->db->join("tbl_countries", "tbl_websites.country_id = tbl_countries.id");
        $this->db->where_in("tbl_websites.id", $website_ids);
        $result = $this->db->get()->result_array();
        return $result;
    }

    public function securityCalculation($website_ids)
    {
        $this->db->select("tbl_countries.country, tbl_websites.id, website_name, website_URL, SSL_certificate_f9 AS f9, cookies_used_f10 AS f10, HTTPS_protocol_status_f11 AS f11, XSS_attack_f12 AS f12, SQL_injection_f13 AS f13, phising_attack_f14 AS f14");
        $this->db->from("tbl_websites");
        $this->db->join("tbl_countries", "tbl_websites.country_id = tbl_countries.id");
        $this->db->where_in("tbl_websites.id", $website_ids);
        $result = $this->db->get()->result_array();
        return $result;
    }
}
