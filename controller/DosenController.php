<?php


namespace controller;


use m\Application;
use m\Controller;

use model\DosenModel;

class DosenController extends Controller
{
    private $_mDosen;

    public function __construct(Application $application)
    {
        parent::__construct($application);

        $this->_mDosen = new DosenModel();
    }

    public function index()
    {
        $dosen = $this->_mDosen->findAll();

        $data = array(
            'all_dosen' => $dosen
        );

        $this->view->setData($data);

        $this->view->setContentTemplate('/dosen/dosen_template.php');
        $this->view->render();
    }

    public function addDosen()
    {
        if(isset($_POST['submit']))
        {
            $this->saveDosenData();

            $this->redirect('/dosen');
        }

        $this->view->setContentTemplate('/dosen/add_dosen_template.php');
        $this->view->render();
    }

    private function saveDosenData()
    {
        $nip        = $_POST['nip'];
        $nama       = $_POST['nama'];
        $alamat     = $_POST['alamat'];
        $prodi      = $_POST['prodi'];
        $jurusan    = $_POST['jurusan'];
        $no_telp    = $_POST['no_telp'];

        $this->_mDosen->addNewDosen($nip, $nama, $alamat, $prodi, $jurusan, $no_telp);
    }
}