<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/head.jspf"%>

<script>
        // Fonction pour récupérer le contenu du fichier JSP et l'afficher dans une alerte
        function afficherAlerteAvecContenuJSP() {
            // Récupérer le contenu du fichier JSP
            fetch('themDetail.jsp')
            .then(response => response.text())
            .then(data => {
                // Afficher le contenu dans une fenêtre d'alerte
                alert(data);
            })
            .catch(error => {
                console.error('Erreur lors de la récupération du contenu JSP :', error);
            });
        }

        // Appeler la fonction pour afficher le contenu JSP dans une alerte
        afficherAlerteAvecContenuJSP();
    </script>


<div>
    <h2>${themePlace.name}</h2>
    <img src="${themePlace.imgAdr}" alt="이미지">
    <p>${themePlace.body}</p>
    <!-- 필요한 정보들을 표시 -->
</div>