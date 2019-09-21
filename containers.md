# Containers
O modelo de virtualização em containers, apesar de ter caido no gosto da industria nos últimos anos, é relativamente antigo.

A primeira versão do chroot, o que podemos considerar um metódo de virtualização a nível de sistema operacional, foi introduzida durante o desenvolvimento da [Versão 7 Unix](https://en.wikipedia.org/wiki/Version_7_Unix) em 1979 e adicionada ao BSD por [Bill Joy](https://en.wikipedia.org/wiki/Bill_Joy) em 18 de março de 1982.

Em 6 de agosto de 2008 nasce o LXC (Linux Container) método de virtualização a nível de sistema operacional para executar vários sistemas Linux isolados (os famosos contêineres), que tem como desenvolvedores grandes nomes como [Virtuozzo](https://www.virtuozzo.com/), [IBM](https://www.ibm.com/br-pt), [Google](https://www.google.com/) entre outros.

As versões iniciais do Docker usavam o LXC (Linux Container) como driver para execução de contêiner, sendo colocado como opcional na v0.9 e na versão v1.10 teve seu suporte encerrando definitivamente.

Contêineres versus Máquinas Virtuais
![Contêineres versus Máquinas Virtuais](https://www.ibm.com/developerworks/br/cloud/library/cl-cloud-orchestration-technologies-trs/vmcontainer.png)

## Container Network Model
https://github.com/docker/libnetwork/blob/master/docs/design.md
