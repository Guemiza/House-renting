<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
//Encoder password
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
//IMPORT USER ENTITY
use AppBundle\Entity\Users;
//FORM TYPE
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
class SecurityController extends Controller
{

    /**
    * @Route("/inscription", name="security_register")
    */

    public function Register(Request $request, UserPasswordEncoderInterface $encoder)
    {
        $user = new Users();
        $form = $this->createFormBuilder($user)
            ->add('username', TextType::class)
            ->add('firstName', TextType::class)
            ->add('lastName', TextType::class)
            ->add('email', TextType::class)
            ->add('password', PasswordType::class)
            ->add('phoneNumber', TextType::class)
            ->add('city', TextType::class)
            ->getForm();

            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {
                $hash = $encoder->encodePassword($user, $user->getPassword());
                
                $username = $form['username']->getData();
                $firstName = $form['firstName']->getData();
                $lastName = $form['lastName']->getData();
                $email = $form['email']->getData();
                $password = $form['password']->getData();
                $phoneNumber = $form['phoneNumber']->getData();
                $city = $form['city']->getData();

                $user->setUsername($username);
                $user->setFirstName($firstName);
                $user->setLastName($lastName);
                $user->setEmail($email);
                $user->setPassword($hash);
                $user->setPhoneNumber($phoneNumber);
                $user->setCity($city);

                $em=$this->getDoctrine()->getManager();
                $em->persist($user);
                $em->flush();
                return $this->redirectToRoute('security_login');
            }
            return $this->render('security/register.html.twig', array(
                'form' => $form->createView(),             
            ));
        }
        /**
         * @Route("/connexion", name="security_login")
         */
    public function login(){
        return $this->render("security/login.html.twig");
    }
        /**
         * @Route("/deconnexion" , name="security_logout")
         */
    public function logout(){}

}
