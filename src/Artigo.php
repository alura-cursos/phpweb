
<?php

class Artigo
{
    private $mysql;

    public function __construct(mysqli $mysql)
    {
        $this->mysql = $mysql;
    }

    public function exibirTodos(): array
    {

        $resultado = $this->mysql->query('SELECT id, titulo, conteudo FROM artigos');
        $artigos = $resultado->fetch_all(MYSQLI_ASSOC);

        return $artigos;
    }

    public function adicionar(string $titulo, string $conteudo):void
    {
        $seleciona = $this->mysql->prepare('insert into artigos(titulo,conteudo)value(?,?)');
        $seleciona->bind_param('ss',$titulo,$conteudo);
        $seleciona->execute();
    }

    public function excluir(string $id): void
    {
        $excluiArtigo = $this->mysql->prepare('delete from artigos where id = ?');
        $excluiArtigo->bind_param('s',$id);
        $excluiArtigo->execute();
    }

    public function editar(string $id, string $conteudo,string $titulo ): void
    {
        $editarArtigo = $this->mysql->prepare('update artigos set titulo = ?, conteudo = ? where id = ?');
        $editarArtigo->bind_param('sss',$titulo,$conteudo,$id);
        $editarArtigo->execute();
    }

    public function encontrarPorId(string $id): array
    {
        $selecionaArtigo = $this->mysql->prepare("SELECT id, titulo, conteudo FROM artigos WHERE id = ?");
        $selecionaArtigo->bind_param('s', $id);
        $selecionaArtigo->execute();
        $artigo = $selecionaArtigo->get_result()->fetch_assoc();
        return $artigo;
    }
}