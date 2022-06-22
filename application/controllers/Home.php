<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('CompareModel');
    }

    public function index()
    {
        $this->load->view('home');
    }

    public function about()
    {
        $data['pageTitle'] = "About";
        $this->load->view('partials/header', $data);
        $this->load->view('about');
    }

    public function country()
    {
        $data['pageTitle'] = "Select Country";
        $data['countries'] = $this->CompareModel->getCountryList();
        $this->load->view('partials/header', $data);
        $this->load->view('country', $data);
    }

    public function websites()
    {
        $data['pageTitle'] = "Select Websites";
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('country1', 'Country 1', 'required');
            $this->form_validation->set_rules('country2', 'Country 2', 'required');
            $this->form_validation->set_rules('compareType', 'Compare Type', 'required');
            if ($this->form_validation->run() == true) {
                $country1 = $this->input->post('country1');
                $country2 = $this->input->post('country2');
                $compareType = $this->input->post('compareType');

                $data['websitesCountry1'] = $this->CompareModel->getWebsiteListByCountry($country1, $compareType);
                $data['websitesCountry2'] = $this->CompareModel->getWebsiteListByCountry($country2, $compareType); 

                $this->load->view('partials/header', $data);
                $this->load->view('websites', $data);
            } else {
                redirect('Home/country');
            }
        } else {
            redirect('Home/country');
        }
    }

    public function showResult()
    {
        $countryweblist1 = $this->input->post('countryweblist1');
        $countryweblist2 = $this->input->post('countryweblist2');

        $button_action = $this->input->post('button_action');
        if ($button_action == "securityFactor") {
            $records1 = $this->CompareModel->securityCalculation($countryweblist1);
            $data1 = [];
            foreach ($records1 as $key => $row) {
                $securitySum = $row['f9'] + $row['f10'] + $row['f11'] + $row['f12'] + $row['f13'] + $row['f14'];
                $data1['label'][] = $row['website_name'];
                $data1['data'][] = (int) $securitySum;
                $records1[$key]['securitySum'] = $securitySum;
            }
            array_multisort(array_column($records1, 'securitySum'), SORT_DESC, $records1);
            $data['pageTitle'] = "Result of Security Factors";
            $data['records1'] = $records1;
            $data['chart_data1'] = json_encode($data1);
            $data['cTitle1'] = json_encode("Websites From " . $records1[0]['country']);

            $records2 = $this->CompareModel->securityCalculation($countryweblist2);
            $data2 = [];
            foreach ($records2 as $key => $row) {
                $securitySum = $row['f9'] + $row['f10'] + $row['f11'] + $row['f12'] + $row['f13'] + $row['f14'];
                $data2['label'][] = $row['website_name'];
                $data2['data'][] = (int) $securitySum;
                $records2[$key]['securitySum'] = $securitySum;
            }
            array_multisort(array_column($records2, 'securitySum'), SORT_DESC, $records2);
            $data['heading'] = "Result of Security Factors";
            $data['records2'] = $records2;
            $data['chart_data2'] = json_encode($data2);
            $data['cTitle2'] = json_encode("Websites From " . $records2[0]['country']);

            $this->load->view('partials/header', $data);
            $this->load->view('results', $data);

        } else if ($button_action == "privacyFactor") {
            $records1 = $this->CompareModel->privacyCalculation($countryweblist1);
            $data1 = [];
            foreach ($records1 as $key => $row) {
                $privacySum = $row['f1'] + $row['f2'] + $row['f3'] + $row['f4'] + $row['f5'] + $row['f6'] + $row['f7'] + $row['f8'];
                $data1['label'][] = $row['website_name'];
                $data1['data'][] = (int) $privacySum;
                $records1[$key]['securitySum'] = $privacySum;
            }
            array_multisort(array_column($records1, 'securitySum'), SORT_DESC, $records1);
            $data['pageTitle'] = "Result of Privacy Factors";
            $data['records1'] = $records1;
            $data['chart_data1'] = json_encode($data1);
            $data['cTitle1'] = json_encode("Websites From " . $records1[0]['country']);

            $records2 = $this->CompareModel->privacyCalculation($countryweblist2);
            $data2 = [];
            foreach ($records2 as $key => $row) {
                $privacySum = $row['f1'] + $row['f2'] + $row['f3'] + $row['f4'] + $row['f5'] + $row['f6'] + $row['f7'] + $row['f8'];
                $data2['label'][] = $row['website_name'];
                $data2['data'][] = (int) $privacySum;
                $records2[$key]['securitySum'] = $privacySum;
            }
            array_multisort(array_column($records2, 'securitySum'), SORT_DESC, $records2);
            $data['heading'] = "Result of Privacy Factors";
            $data['records2'] = $records2;
            $data['chart_data2'] = json_encode($data2);
            $data['cTitle2'] = json_encode("Websites From " . $records2[0]['country']);

            $this->load->view('partials/header', $data);
            $this->load->view('results', $data);
        } else {
            redirect('Home/country');
        }
    }

    // public function privacyResult()
    // {
    //     $selected_ids = array('199', '197', '206', '10', '15');
    //     // echo "<pre>";
    //     // print_r($selected_ids);
    //     $records = $this->CompareModel->privacyCalculation($selected_ids);
    //     $data = [];
    //     foreach ($records as $row) {
    //         $privacySum = $row->f1 + $row->f2 + $row->f3 + $row->f4 + $row->f5 + $row->f6 + $row->f7 + $row->f8;
    //         $data['label'][] = $row->website_name;
    //         $data['data'][] = (int) $privacySum;
    //     }
    //     $data['chart_data'] = json_encode($data);
    //     $data['cTitle'] = json_encode("Website Ranking Privacy");
    //     $this->load->view('results', $data);
    // }

    // public function securityResult()
    // {
    //     $selected_ids = array('1', '2', '3', '10', '15');
    //     $records = $this->CompareModel->securityCalculation($selected_ids);
    //     $data = [];
    //     foreach ($records as $row) {
    //         $securitySum = $row->f9 + $row->f10 + $row->f11 + $row->f12 + $row->f13 + $row->f14;
    //         $data['label'][] = $row->website_name;
    //         $data['data'][] = (int) $securitySum;
    //     }
    //     $data['chart_data'] = json_encode($data);
    //     $data['cTitle'] = json_encode("Website Ranking Security");
    //     $this->load->view('results', $data);
    // }

}
